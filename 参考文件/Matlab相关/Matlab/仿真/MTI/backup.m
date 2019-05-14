%% ���Ե�Ƶ�ź�����ѹ��-�����±�Ƶ���� DDC 
clc;
clear all;
close all;
B=5e6;          %%�źŴ���
f0=30e6;        %��Ƶ
fs=40e6;        %����Ƶ��
fs1=(20/3)*1e6; %%��ȡ��Ƶ��
T=24.9e-6;      %%ʱ��
k=B/T;
fk=127;         %%��DDCʱ�ĵ�ͨ�˲����Ľ���

fid=fopen('20090724fc1yindao4-0.dat','r');
sss=fread(fid,32*4096,'int16');  
fclose(fid);
figure(100);plot(sss);grid on;xlabel('����');ylabel('����');title('32�������ź�ʱ����');grid on;

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
%%end DDC_PC

%% MTITest  
close all; 
clear all; 
clc;
C=3.0e8;  %����(m/s)
RF=1e10;  %�״���Ƶ 10GHz
Lambda=C/RF;%�״﹤������
fc = 30e6; % �ز�Ƶ��
PulseNumber=16;   %�ز�������
BandWidth=10e6;  %�����źŴ��� ����B=1/�ӣ����������� 
TimeWidth=6.4e-6; %�����ź�ʱ��
PRT=51.2e-6;   % �״﷢�������ظ�����(s)
PRF=1/PRT;
Fs=40e6;  %����Ƶ��
NoisePower=-120;%(dB);%�������ʣ�Ŀ��Ϊ0dB��
SampleNumber=fix(Fs*PRT);%����һ���������ڵĲ���������
TotalNumber=SampleNumber*PulseNumber;%�ܵĲ���������
BlindNumber=fix(Fs*TimeWidth);%����һ���������ڵ�ä��-�ڵ�������
%================================Ŀ�����====================================%
TargetNumber=2;%Ŀ�����
SigPower(1:TargetNumber)=[2,2];%Ŀ�깦��,������
TargetDistance(1:TargetNumber)=[2000,5000];%Ŀ�����,��λm  
DelayNumber(1:TargetNumber)=fix(Fs*2*TargetDistance(1:TargetNumber)/C);% ��Ŀ����뻻��ɲ����㣨�����ţ� fix������0��£ȡ��
TargetVelocity(1:TargetNumber)=[18.3];%Ŀ�꾶���ٶ� ��λm/s  
TargetFd(1:TargetNumber)=2*TargetVelocity(1:TargetNumber)/Lambda; %����Ŀ��ಷ��Ƶ��2v/��
%===========================�������Ե�Ƶ�ź�=====================================%
number=fix(Fs*TimeWidth);%�ز��Ĳ�������=��ѹϵ������=��̬����Ŀ+1
 if rem(number,2)~=0  %rem����
    number=number+1;
 end   %��number��Ϊż��

 for i=-fix(number/2):fix(number/2)-1
%     Chirp(i+fix(number/2)+1)=exp(1j*2*pi*fc*(i/Fs)+1j*(pi*(BandWidth/TimeWidth)*(i/Fs)^2));%exp(j*fi)*��������������Chirp
    Chirp(i+fix(number/2)+1)=exp(1j*(pi*(BandWidth/TimeWidth)*(i/Fs)^2));%exp(j*fi)*��������������Chirp
 end
 coeff=conj(fliplr(Chirp));%��Chirp����ת���Ѹ������������ѹϵ��
 figure(1);%��ѹϵ����ʵ��
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
 figure(2);
 subplot(2,1,1);plot(real(SignalAll),'r-');title('Ŀ���źŵ�ʵ��');grid on;zoom on;
 subplot(2,1,2);plot(imag(SignalAll));title('Ŀ���źŵ��鲿');grid on;zoom on;
 
 %============================����ϵͳ�����ź�====================%
 SystemNoise= normrnd(0,10^(NoisePower/10),1,TotalNumber)+j*normrnd(0,10^(NoisePower/10),1,TotalNumber);
 %��ֵΪ0����׼��Ϊ10^(NoisePower/10)������

 %==============================�ܵĻز��ź�=====================%
 Echo=SignalAll+SystemNoise;% +SeaClutter+TerraClutter��������֮��Ļز�

  for i=1:PulseNumber   %�ڽ��ջ�������,���յĻز�Ϊ0
       Echo((i-1)*SampleNumber+1:(i-1)*SampleNumber+number)=0; %����ʱ����Ϊ0
 end
 figure(3);%������֮����ܻز��ź�
 subplot(2,1,1);plot(real(Echo),'r-');title('�ܻز��źŵ�ʵ��');
 subplot(2,1,2);plot(imag(Echo));title('�ܻز��źŵ��鲿');
  

 %----------------------------- NCO---------------------%
Echo_I = Echo.*cos(1/4*2*pi*(0:TotalNumber-1));% I·
Echo_Q = Echo.*sin(1/4*2*pi*(0:TotalNumber-1)); %Q·
[n,fo,ao,w] = firpmord( [5e6 5.1e6], [1 0], [0.01 0.1], 40e6 );
 b = firpm(n,fo,ao,w);
 fil_I = filter(b,1,Echo_I);
 fil_Q = filter(b,1,Echo_Q);
  
%================================ʱ����ѹ=================================%
Echo = fil_I + 1i*fil_Q;
pc_time0=conv(Echo,coeff);                                                %pc_time0ΪEcho��coeff�ľ��
pc_time1=pc_time0(number:TotalNumber+number-1);                           %ȥ����̬�� number-1��
figure(4);                                                                %ʱ����ѹ����ķ���
subplot(2,1,1);plot(abs(pc_time0),'r-');title('ʱ����ѹ����ķ���');        %pc_time0��ģ������
subplot(2,1,2);plot(abs(pc_time1));title('ʱ����ѹ����ķ���');             %pc_time1��ģ������
 
% ================================Ƶ����ѹ=================================%
Echo_fft=fft(Echo,TotalNumber+number-1);                                   %����TotalNumber+number-1��FFT
coeff_fft=fft(coeff,TotalNumber+number-1);
pc_fft=Echo_fft.*coeff_fft;
pc_freq0=ifft(pc_fft);
figure(5);
subplot(2,1,1);plot(abs(pc_freq0(1:TotalNumber+number-1)));title('Ƶ����ѹ����ķ���,��ǰ��̬��');
subplot(2,1,2);plot(abs(pc_time0(1:TotalNumber+number-1)-pc_freq0(1:TotalNumber+number-1)),'r');title('ʱ���Ƶ����ѹ�Ĳ��');
pc_freq1=pc_freq0(number:TotalNumber+number-1);                            %ȥ����̬�� number-1��,����������
 
%============��������š������ź���������=================================%
 for i=1:PulseNumber
       pc(i,1:SampleNumber)=pc_freq1((i-1)*SampleNumber+1:i*SampleNumber); %ÿ��PRTΪһ�У�ÿ��480�������������
 end
 figure(6);
 plot(abs(pc(1,:)));title('Ƶ����ѹ����ķ���,û����̬��');

% ---------------------------MTI-------------------------- %
 for i=1:PulseNumber-2
    mti(i,:)=pc(i+2,:)+pc(i,:)-2*pc(i+1,:);
 end
% -------------------------��λ���----------------------- %
 mti_ac = zeros(1,length(mti(1,:)));
 for i=1:PulseNumber-2
    mti_ac=mti_ac + mti(i,:);
 end
 figure(7)
 plot(abs(mti_ac));title('�����ۻ����');
 
%--------------------------------CA_CFAR-------------------------------%
mtd_result=abs(mti_ac);
N3=length(mtd_result)
cfar_result=zeros(1,N3);
cfar_result(1,1)=mean(mtd_result(1,2:4));                                           % ��1����龯����ʱ������ֵ��������3�����������
for i=2:3 
   noise_mean=(mean(mtd_result(1,1:i-1))+mean(mtd_result(1,i+1:i+3)))/2;           % ��2�㵽��3��ĺ��龯����ʱ������ֵ����ǰ��ͺ����3���������ͬ����
   cfar_result(1,i)=noise_mean;
end
for i=4:N3-4                                                                        % ���������ݵ�ĺ��龯�����������ֵ����ǰ��ͺ����3��������еĴ��߾���
   noise_mean=(mean(mtd_result(1,i-3:i-1))+mean(mtd_result(1,i+1:i+3)))/2;
   cfar_result(1,i)=noise_mean;
end
for i=N3-3:N3-1                                                                % ������3���㵽�����ڶ���ĺ��龯�����������ֵ����ǰ��3��ͺ����������ͬ����
   noise_mean=(mean(mtd_result(1,i-3:i-1))+mean(mtd_result(1,i+1:N3)))/2;
   cfar_result(1,i)=noise_mean;
end

cfar_result(1,N3)=mean(mtd_result(1,N3-3:N3-1));                       % ���һ����龯����ʱ������ֵ����ǰ���3�����������


figure(8),plot(abs(cfar_result));
grid on;xlabel('���뵥Ԫ');ylabel('ͨ����');zlabel(' ����');title('CFAR���');
%% end MTITest  

