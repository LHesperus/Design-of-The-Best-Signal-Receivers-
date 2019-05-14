%% ���Ե�Ƶ�ź�����ѹ��-�����±�Ƶ���� DDC 
clc;
clear all;
close all;
C=3.0e8;        %����(m/s)
RF=1e10;  %�״���Ƶ 10GHz %%%%%%%%%%%%������������������������������
B=5e6;          %%�źŴ���
f0=30e6;        %��Ƶ
fs=40e6;        %����Ƶ��
fs1=(20/3)*1e6; %%��ȡ��Ƶ��
T=24.9e-6;      %%ʱ��
k=B/T;
fk=127;         %%��DDCʱ�ĵ�ͨ�˲����Ľ���
Lambda=C/RF;    %�״﹤������ ����������������������������
% TimeWidth=6.4e-6; %�����ź�ʱ��

% fid=fopen('20090724fc1yindao4-0.dat','r');
% sss=fread(fid,32*4096,'int16');  
% fclose(fid);
% figure(100);plot(sss);grid on;xlabel('����');ylabel('����');title('32�������ź�ʱ����');grid on;

%�����ز��ź�                                                                        %
%==========================Ŀ�����============================%
TargetNumber=1;                         %Ŀ�����
SigPower(1:TargetNumber)=[1];           %Ŀ�깦��,������
TargetDistance(1:TargetNumber)=[2000];  %Ŀ�����,��λm  
DelayNumber(1:TargetNumber)=fix(fs*2*TargetDistance(1:TargetNumber)/C); %��Ŀ����뻻��ɲ����㣨�����ţ� fix������0��£ȡ��
TargetVelocity(1:TargetNumber)=[18.3];                                  %Ŀ�꾶���ٶ� ��λm/s  
TargetFd(1:TargetNumber)=2*TargetVelocity(1:TargetNumber)/Lambda;       %����Ŀ��ಷ��Ƶ��2v/��
%=========================�������Ե�Ƶ�ź�=============================%
number=fix(fs*T);           %�ز��Ĳ�������=��ѹϵ������=��̬����Ŀ+1
 if rem(number,2)~=0        %rem����
    number=number+1;
 end                        %��number��Ϊż��

 for i=-fix(number/2):fix(number/2)-1
    Chirp(i+fix(number/2)+1)=exp(1j*2*pi*fc*(i/Fs)+1j*(pi*(BandWidth/TimeWidth)*(i/Fs)^2));%exp(j*fi)*��������������Chirp
 end
 coeff=conj(fliplr(Chirp)); %��Chirp����ת���Ѹ������������ѹϵ��
 figure(1);                 %��ѹϵ����ʵ��
 plot(real(Chirp));axis([0 300 -1.5 1.5]);title('��ѹϵ��ʵ��');
%-------------------------����Ŀ��ز���-----------------------------%
SignalAll=zeros(1,TotalNumber);%����������ź�,����0
 for k=1:TargetNumber % ���β�������Ŀ��
    SignalTemp=zeros(1,SampleNumber);% һ��PRT
    SignalTemp(DelayNumber(k)+1:DelayNumber(k)+number)=sqrt(SigPower(k))*Chirp;%һ�������1��Ŀ�꣨δ�Ӷ������ٶȣ�(DelayNumber(k)+1):(DelayNumber(k)+number)
    Signal=zeros(1,TotalNumber);
    for i=1:PulseNumber % 16���ز�����
       Signal((i-1)*SampleNumber+1:i*SampleNumber)=SignalTemp; %ÿ��Ŀ���16��SignalTemp����һ��
    end
    FreqMove=exp(j*2*pi*TargetFd(k)*(0:TotalNumber-1)/Fs);%Ŀ��Ķ������ٶ�*ʱ��=Ŀ��Ķ���������
    Signal=Signal.*FreqMove;%���϶������ٶȺ��16������1��Ŀ��
    SignalAll=SignalAll+Signal;%���϶������ٶȺ��16������
 end
%end�����ز��ź�




L=length(sss);
N=4096;
R=fix(L/N);
for r=1:R
    ss(r,:)=sss((r-1)*N+1:1:r*N);
end
figure(1);plot(ss(R,:));xlabel('����');ylabel('����');title('�ź�ʱ����');grid on;

%%%%%%%%%%%%%%%   ��ͨ�˲���  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ff=[0 1/8 1/4 1];
aa=[1 1 0 0];
b=firpm(fk,ff,aa);
[h,w]=freqz(b,1,1024);
% figure(2);
% f=linspace(0,fs/2,1024);
% plot(f/1e6,20*log10(abs(h)));xlabel('f/Mhz');ylabel('dB');title('��ͨ�˲����ķ�Ƶ��Ӧ');grid on;

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
subplot(211);plot(m,I);xlabel('����');ylabel('����');title('DDC��I·�źŲ���');
subplot(212);plot(m,Q);xlabel('����');ylabel('����');title('DDC��Q·�źŲ���');
% figure(4);
% subplot(211);plot(m,abs(ddcs(R,:)));xlabel('����');ylabel('����');title('DDC���ź�ʱ����');grid on;
% sf=fftshift(fft(ddcs(R,:),2048));
% f=linspace(0,fs,2048);
% subplot(212);plot(f/1e6,abs(sf));xlabel('MHz');ylabel('����');title('DDC���ź�Ƶ��');grid on;

%%%%%%%%%%%%%%%%%%%    6����ȡ   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PD=fix((N+fk)/6);
cddcs=zeros(R,PD);
for r=1:R
    dd=ddcs(r,:);
    for pd=1:PD
        dd1(pd)=dd(6*pd);
    end
    cddcs(r,:)=dd1;
end

%%%��ȡ֮���źŵļӴ���ѹ%%%%%%%%%%%%%%%%%%%%%%%
N1=T*fs;
t=linspace(-T/2,T/2,N1);        
hs=exp(j*k*pi*t.^2);%%%����δ��ȡ�ź�
ha=conj(fliplr(hs));
P=fix(N1/6);
for p=1:P
    hb(p)=ha(6*p); %%%%%%%%%%��ƥ���˲������г�ȡ
end

window=hamming(P);        %%%%%%%��hamming��
chmyw=zeros(R,PD+P-1);                      
h=hb.*window.';
for r=1:R
    chmyw(r,:)=conv(cddcs(r,:),h);
end
figure(6);
plot(20*log10(abs(chmyw(R,:))/max(abs(chmyw(R,:)))));xlabel('����');ylabel('dB');title('��ȡ֮���źżӴ���ѹ');grid on;
figure(7);
plot((abs(chmyw(R,:))));xlabel('����');ylabel('����');title('��ȡ֮���źżӴ���ѹ');grid on;



