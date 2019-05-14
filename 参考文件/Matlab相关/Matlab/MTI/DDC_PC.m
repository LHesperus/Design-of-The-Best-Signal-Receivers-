% 线性调频信号脉冲压缩-数字下变频程序 DDC 
clc;
clear all;
close all;
B=5e6;          %%信号带宽
f0=30e6;        %中频
fs=40e6;        %采样频率
fs1=(20/3)*1e6; %%抽取后频率
T=24.9e-6;      %%时宽
k=B/T;
fk=127;         %%做DDC时的低通滤波器的阶数

fid=fopen('20090724fc1yindao4-0.dat','r');
sss=fread(fid,32*4096,'int16');  
fclose(fid);
figure(100);plot(sss);grid on;xlabel('点数');ylabel('幅度');title('32个周期信号时域波形');grid on;

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



