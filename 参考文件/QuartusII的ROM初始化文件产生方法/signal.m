%---------------------------------------------------------
%----�˳�����������FPGA������ROM��������ݣ�Ҳ������Դ�źţ�������������
%---0.1MHz�źŴ�0�㷽�����䣬��Ŀ���źţ�0.05MHz�źŴ�40�㷽�����䣬�������źš�
%---------------------------------------------------------

clear all
close all
clc

N=256;
M=4;
K=2;
d=0.5;

seta1=0;
seta2=40;
f1=100;     %0.1MHz
f2=50;
fs=400;

SNR1=15;
SNR2=15;
As1=10^(SNR1/20);
As2=10^(SNR2/20);
signal1=As1*exp(j*2*pi*f1/fs*(1:N)+j*2*pi*rand);
signal2=As2*exp(j*2*pi*f2/fs*(1:N)+j*2*pi*rand);
noise=(randn(M,N)+j*randn(M,N))/sqrt(2);

fai1=2*pi*d*sin(seta1/180*pi);
fai2=2*pi*d*sin(seta2/180*pi);
a1=exp(-j*fai1*(0:M-1)');
a2=exp(-j*fai2*(0:M-1)');
xn=a1*signal1+a2*signal2+noise;
%xn=a1*signal1+a2*signal2;
%xn=a2*signal2+noise;


x1_I=real(xn(1,:));
x1_Q=imag(xn(1,:));
x2_I=real(xn(2,:));
x2_Q=imag(xn(2,:));
x3_I=real(xn(3,:));
x3_Q=imag(xn(3,:));
x4_I=real(xn(4,:));
x4_Q=imag(xn(4,:));

x1_I=fix(2^7*real(xn(1,:))+0.5);  %fixed(1,12,7)
x1_Q=fix(2^7*imag(xn(1,:))+0.5);
x2_I=fix(2^7*real(xn(2,:))+0.5);
x2_Q=fix(2^7*imag(xn(2,:))+0.5);
x3_I=fix(2^7*real(xn(3,:))+0.5);
x3_Q=fix(2^7*imag(xn(3,:))+0.5);
x4_I=fix(2^7*real(xn(4,:))+0.5);
x4_Q=fix(2^7*imag(xn(4,:))+0.5);


x1_I_max=max(abs(x1_I));
x1_Q_max=max(abs(x1_Q));
x2_I_max=max(abs(x2_I));
x2_Q_max=max(abs(x2_Q));
x3_I_max=max(abs(x3_I));
x3_Q_max=max(abs(x3_Q));
x4_I_max=max(abs(x4_I));
x4_Q_max=max(abs(x4_Q));


% %-----����ؾ���
% R=zeros(M,M);
% for k=1:N
%     R=R+xn(:,k)*xn(:,k)';
% end
% R=R/N;
% 
% %--------------------------MUSIC�㷨------------------------------
% [U,D]=svd(R);   %R��Hermite������˶���eig��svd�ֽ�Ч��һ����D�Ǵ�С�������е�����ֵ��U�Ƕ�Ӧ����������
% G=U(:,K+1:M);
% num=1000;
% seta=linspace(-90,90,num);
% Pmusic=zeros(1,num);
% for k=1:num
%     a=exp(-j*[0:M-1]'*2*pi*d*sin(seta(k)/180*pi));
%     Pmusic(k)=1/(a'*G*G'*a);
% end
% Pmusic=abs(Pmusic);
% figure(1)
% plot(seta,10*log10(Pmusic/max(Pmusic)))
% xlabel('����Ƕ�\theta')
% ylabel('��һ��MUSIC��/dB')

%-----------------------MVDR�㷨-------------------------------
% num=1000;
% seta=linspace(-90,90,num);
% Pmvdr=zeros(1,num);
% for k=1:num
%     a=exp(-j*[0:M-1]'*2*pi*d*sin(seta(k)/180*pi));
%     Pmvdr(k)=1/(a'*inv(R)*a);
% end
% Pmvdr=abs(Pmvdr);
% figure(2)
% plot(seta,10*log10(Pmvdr/max(Pmvdr)))
% xlabel('����Ƕ�\theta')
% ylabel('��һ��MVDR��/dB')

% figure (1)
% plot(1:N,real(signal1))
% figure (2)
% plot(1:N,imag(signal1))
% figure (3)
% plot(1:N,real(signal2))
% figure (4)
% plot(1:N,imag(signal2))
% figure (5)
% plot(1:N,real(xn))
% figure (6)
% plot(1:N,imag(xn))

%%������%%
Unf=fft(xn(1,:),N);
Sper=1/N*abs(Unf).^2;
Sper0=fftshift(Sper);

figure(7)
plot(linspace(-pi,pi,N)/(2*pi),10*log10(Sper0/(max(Sper0))))
xlabel('��һ��Ƶ��\omega/2\pi');
ylabel('��һ��������/dB');
title('����ͼ��');
