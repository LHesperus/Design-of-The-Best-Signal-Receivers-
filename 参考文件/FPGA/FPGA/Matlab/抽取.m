clear all;
close all;
clc;

T=10e-6;
B=5e6;
Fs=120e6;
fs=12e6;% ������Ƶ��
IF=15e6;
I0=15e6;
Delay=5e-6;
D=Delay*Fs;
D1=Delay*fs;
t=linspace(-T/2,T/2,T*Fs);
s=cos(2*pi*IF*t+pi*B/T*t.^2);
%%%%% ��Ƶʱ���� %%%%%%%
k=length(s);
figure;
plot((D:k-1+D)/Fs*1e6,s);
axis([0 20 -1 1]);
title('LFM��Ƶ�ź�ʱ����');
xlabel('ʱ��/us');
ylabel('����/v');
grid;
%%%%%% ��ƵƵ���� %%%%%%%%
Sw=abs(fftshift(fft(s)));
Y=20*log10(Sw);
k=length(Y);
figure;
plot((-(k-1)/2:(k-1)/2)*Fs/(k*1e6),Y);
title('LFM��Ƶ�ź�Ƶ����');
xlabel('Ƶ��/MHz');
ylabel('����/dB');
grid;
%%%%% DDC %%%%%%%%%
In=s.*cos(2*pi*I0*t);
Qn=s.*sin(2*pi*I0*t)
b=fir1(100,2*B/Fs);

Base_In=2*filter(b,1,In);
Base_Qn=2*filter(b,1,Qn);
Base=Base_In+j*Base_Qn;
k=length(Base);
figure;
plot((D:k-1+D)/Fs*1e6,Base_In);
hold on;
plot((D:k-1+D)/Fs*1e6,Base_Qn,'r--');
axis([0 20 -1 1]);
title('�����������(LPF��)');
xlabel('ʱ��/us');
ylabel('����/v');
grid;
SD_In=[];
SD_Qn=[];
for i=1:10:1200
    SD_In=[SD_In Base_In(i)];%10����ȡ
    SD_Qn=[SD_Qn Base_Qn(i)];
end
k=length(SD_In);
figure;
plot((D1:k-1+D1)/fs*1e6,SD_In);
hold on;
plot((D1:k-1+D1)/fs*1e6,SD_Qn,'r--');
axis([0 20 -1 1]);
title('�����������������');
xlabel('ʱ��/us');
ylabel('����/v');
grid;
SD_Base=SD_In+j*SD_Qn;
Sw=abs(fftshift(fft(SD_Base)));
Y=20*log10(Sw);
k=length(Y);
figure;
plot((-(k-1)/2:(k-1)/2)*fs/(k*1e6),Y);
title('�������������Ƶ�ף�LPF��');
xlabel('Ƶ��/MHz');
ylabel('����/dB');
grid;
%%%%% ����ѹ�� %%%%%%
y=conv(SD_Base,conj(fliplr(SD_Base)));
Y=max(abs(y));
y=y/Y;
y_db=20*log10(y);
k=length(y_db);
figure;
plot((0:k-1)/fs*1e6,y_db);
axis([0 20 -60 0]);
title('����ѹ�����');
xlabel('ʱ��/us');
ylabel('��һ������/dB');
grid;
figure;
plot((0:k-1)/fs*1e6,abs(y));
title('��ѹ���(��������)');
xlabel('ʱ��/us');
ylabel('��һ������/V');
grid;

