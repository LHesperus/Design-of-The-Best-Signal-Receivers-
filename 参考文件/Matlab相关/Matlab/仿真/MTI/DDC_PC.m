%% 线性调频信号脉冲压缩-数字下变频程序 DDC 
clc;
clear all;
close all;
C=3.0e8;        %光速(m/s)
RF=1e10;  %雷达射频 10GHz %%%%%%%%%%%%？？？？？？？？？？？？？？？
B=5e6;          %%信号带宽
f0=30e6;        %中频
fs=40e6;        %采样频率
fs1=(20/3)*1e6; %%抽取后频率
T=24.9e-6;      %%时宽
k=B/T;
fk=127;         %%做DDC时的低通滤波器的阶数
Lambda=C/RF;    %雷达工作波长 ？？？？？？？？？？？？？？
% TimeWidth=6.4e-6; %发射信号时宽

% fid=fopen('20090724fc1yindao4-0.dat','r');
% sss=fread(fid,32*4096,'int16');  
% fclose(fid);
% figure(100);plot(sss);grid on;xlabel('点数');ylabel('幅度');title('32个周期信号时域波形');grid on;

%产生回波信号                                                                        %
%==========================目标参数============================%
TargetNumber=1;                         %目标个数
SigPower(1:TargetNumber)=[1];           %目标功率,无量纲
TargetDistance(1:TargetNumber)=[2000];  %目标距离,单位m  
DelayNumber(1:TargetNumber)=fix(fs*2*TargetDistance(1:TargetNumber)/C); %把目标距离换算成采样点（距离门） fix函数向0靠拢取整
TargetVelocity(1:TargetNumber)=[18.3];                                  %目标径向速度 单位m/s  
TargetFd(1:TargetNumber)=2*TargetVelocity(1:TargetNumber)/Lambda;       %计算目标多卜勒频移2v/λ
%=========================产生线性调频信号=============================%
number=fix(fs*T);           %回波的采样点数=脉压系数长度=暂态点数目+1
 if rem(number,2)~=0        %rem求余
    number=number+1;
 end                        %把number变为偶数

 for i=-fix(number/2):fix(number/2)-1
    Chirp(i+fix(number/2)+1)=exp(1j*2*pi*fc*(i/Fs)+1j*(pi*(BandWidth/TimeWidth)*(i/Fs)^2));%exp(j*fi)*，产生复数矩阵Chirp
 end
 coeff=conj(fliplr(Chirp)); %把Chirp矩阵翻转并把复数共轭，产生脉压系数
 figure(1);                 %脉压系数的实部
 plot(real(Chirp));axis([0 300 -1.5 1.5]);title('脉压系数实部');
%-------------------------产生目标回波串-----------------------------%
SignalAll=zeros(1,TotalNumber);%所有脉冲的信号,先填0
 for k=1:TargetNumber % 依次产生各个目标
    SignalTemp=zeros(1,SampleNumber);% 一个PRT
    SignalTemp(DelayNumber(k)+1:DelayNumber(k)+number)=sqrt(SigPower(k))*Chirp;%一个脉冲的1个目标（未加多普勒速度）(DelayNumber(k)+1):(DelayNumber(k)+number)
    Signal=zeros(1,TotalNumber);
    for i=1:PulseNumber % 16个回波脉冲
       Signal((i-1)*SampleNumber+1:i*SampleNumber)=SignalTemp; %每个目标把16个SignalTemp排在一起
    end
    FreqMove=exp(j*2*pi*TargetFd(k)*(0:TotalNumber-1)/Fs);%目标的多普勒速度*时间=目标的多普勒相移
    Signal=Signal.*FreqMove;%加上多普勒速度后的16个脉冲1个目标
    SignalAll=SignalAll+Signal;%加上多普勒速度后的16个脉冲
 end
%end产生回波信号




L=length(sss);
N=4096;
R=fix(L/N);
for r=1:R
    ss(r,:)=sss((r-1)*N+1:1:r*N);
end
figure(1);plot(ss(R,:));xlabel('点数');ylabel('幅度');title('信号时域波形');grid on;

%%%%%%%%%%%%%%%   低通滤波器  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ff=[0 1/8 1/4 1];
aa=[1 1 0 0];
b=firpm(fk,ff,aa);
[h,w]=freqz(b,1,1024);
% figure(2);
% f=linspace(0,fs/2,1024);
% plot(f/1e6,20*log10(abs(h)));xlabel('f/Mhz');ylabel('dB');title('低通滤波器的幅频响应');grid on;

%%%%%%%%%%%%%%%    DDC     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ddcs=zeros(R,N+fk);
for r=1:1:R
    n=-N/2:1:N/2-1;
    si=ss(r,:).*cos(2*pi*f0*n/fs);
    sq=-ss(r,:).*sin(2*pi*f0*n/fs);
    I=conv(si,b);
    Q=conv(sq,b);
    ddcs(r,:)=I+j*Q;                        
end
m=1:N+fk;
figure(3);
subplot(211);plot(m,I);xlabel('点数');ylabel('幅度');title('DDC后I路信号波形');
subplot(212);plot(m,Q);xlabel('点数');ylabel('幅度');title('DDC后Q路信号波形');
% figure(4);
% subplot(211);plot(m,abs(ddcs(R,:)));xlabel('点数');ylabel('幅度');title('DDC后信号时域波形');grid on;
% sf=fftshift(fft(ddcs(R,:),2048));
% f=linspace(0,fs,2048);
% subplot(212);plot(f/1e6,abs(sf));xlabel('MHz');ylabel('幅度');title('DDC后信号频谱');grid on;

%%%%%%%%%%%%%%%%%%%    6倍抽取   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PD=fix((N+fk)/6);
cddcs=zeros(R,PD);
for r=1:R
    dd=ddcs(r,:);
    for pd=1:PD
        dd1(pd)=dd(6*pd);
    end
    cddcs(r,:)=dd1;
end

%%%抽取之后信号的加窗脉压%%%%%%%%%%%%%%%%%%%%%%%
N1=T*fs;
t=linspace(-T/2,T/2,N1);        
hs=exp(j*k*pi*t.^2);%%%用于未抽取信号
ha=conj(fliplr(hs));
P=fix(N1/6);
for p=1:P
    hb(p)=ha(6*p); %%%%%%%%%%对匹配滤波器进行抽取
end

window=hamming(P);        %%%%%%%加hamming窗
chmyw=zeros(R,PD+P-1);                      
h=hb.*window.';
for r=1:R
    chmyw(r,:)=conv(cddcs(r,:),h);
end
figure(6);
plot(20*log10(abs(chmyw(R,:))/max(abs(chmyw(R,:)))));xlabel('点数');ylabel('dB');title('抽取之后信号加窗脉压');grid on;
figure(7);
plot((abs(chmyw(R,:))));xlabel('点数');ylabel('幅度');title('抽取之后信号加窗脉压');grid on;



