%MATLAB����ʵ��2
%��ƵLFM�źŲ���:B=5MHz,T=10us,IF=15MHz,Fs=120MHz,DELAY=5us
%DDC��LO=15MHz��D=10��  
%����ѹ������B=5MHz,T=10us
close all;
clear all;
clc;
MHz=1e+6;
us=1e-6;
%---------���β���---------
f0=15*MHz;
fs=120*MHz;
B=5*MHz;
T=10*us;
%---------���μ���---------
K=B/T;
Ts=1/fs;
tsam=[0:Ts:T];
%LFM=exp(j*(2*pi*(-B/2)*tsam+pi*K*tsam .^2));
LFM_IF=cos((2*pi*(f0-B/2)*tsam+pi*K*tsam .^2));    %ʵ�ź�

%��Ҫ���ӳ�5us
DELAY = zeros(1,T/(2*Ts));
LFM_IF = [DELAY,LFM_IF];
N=length(LFM_IF);

figure(1);
x_axis=(1:N)*Ts/us;
plot(x_axis,LFM_IF,'r');hold on;
%plot(x_axis,imag(LFM),'b');hold off;
title('LFM��Ƶ�ź�');xlabel('ʱ��(us)'); ylabel('��һ������');
grid on; 
axis([min(x_axis) max(x_axis) -1.1 1.1]);

wavefft=fftshift(fft(LFM_IF));
showfft=abs(wavefft);
gi=(-fs/2+fs/N:fs/N:fs/2)/MHz;

figure(2); 
plot(gi,20*log10(showfft/max(showfft)),'k');
title('LFM��Ƶ�ź�Ƶ��');xlabel('Ƶ��(MHZ)'); ylabel('���ȹ�һ��(dB)');
grid on; 
axis([min(gi) max(gi) -60 5]);

%----------�������---------

k=Ts:Ts:N*Ts;
LO=exp(j*2*pi*f0*k);
TEMP_I=LFM_IF.*real(LO);
TEMP_I=TEMP_I./max(abs(TEMP_I));
TEMP_Q=LFM_IF.*imag(LO);
TEMP_Q=TEMP_Q./max(abs(TEMP_Q));

% figure(3);
% x_axis=(1:N)*Ts/us;
% plot(x_axis,TEMP_I,'r');hold on;
% plot(x_axis,TEMP_Q,'b');hold off;
% title('�����Ƶ����(LPFǰ)');xlabel('ʱ��(us)'); ylabel('��һ������');
% grid on; 
% axis([min(x_axis) max(x_axis) -1.1 1.1]);

lpf_fre=20*MHz;
filter_length=60;
filter_coff=fir1(filter_length,lpf_fre/fs);
I=conv(TEMP_I,filter_coff);
I=I./max(abs(I));
Q=conv(TEMP_Q,filter_coff);
Q=Q./max(abs(Q));
N=length(I);

% figure(4);
% x_axis=(1:N)*Ts/us;
% plot(x_axis,I,'r');hold on;
% plot(x_axis,Q,'b');hold off;
% title('�����Ƶ����(LPF��)');xlabel('ʱ��(us)'); ylabel('��һ������');
% grid on; 
% axis([min(x_axis) max(x_axis) -1.1 1.1]);

%----------��������--------
D=10;

BASE_I=I(1:D:N);
BASE_Q=Q(1:D:N);
N=length(BASE_I);

figure(5);
x_axis=(1:N)*D*Ts/us;
plot(x_axis,BASE_I,'r');hold on;
plot(x_axis,BASE_Q,'b');hold off;
title('�����������Ƶ����');xlabel('ʱ��(us)'); ylabel('��һ������');
grid on; 
axis([min(x_axis) max(x_axis) -1.1 1.1]);

%-----------��ѹ������-----------

BASEF = BASE_I + j*BASE_Q;
N=length(BASEF);
PC_FILTER=conj(BASEF(61:N));
PC_FILTER1=[zeros(1,60) PC_FILTER];

figure(6);
x_axis=(1:N)*Ts/us;
plot(x_axis,real(PC_FILTER1),'r');hold on;
plot(x_axis,imag(PC_FILTER1),'b');hold off;
title('LFMƥ���˲�����Ӧ');xlabel('ʱ��(us)'); ylabel('��һ������');
grid on; 
axis([min(x_axis) max(x_axis) -1.1 1.1]);

%-----------��ѹ������-----------

PCOUT=conv(BASEF,PC_FILTER);
SHOW=abs(PCOUT);
SHOW=SHOW./max(SHOW);
N=length(SHOW);

Fig=figure(7);
x_axis=(1:N)*Ts*10/us;
plot(x_axis,SHOW,'k');
title('����ѹ�����(��������)');
xlabel('ʱ��(us)'); ylabel('��һ������');
grid on; 
axis([min(x_axis) max(x_axis) -0.1 1.1]);

figure(8);
x_axis=(1:N)*Ts/us;
plot(x_axis,20*log10(SHOW),'k');
title('����ѹ�����(��������)');
xlabel('ʱ��(us)'); ylabel('��һ������');
grid on; 
axis([min(x_axis) max(x_axis) -60 5]);