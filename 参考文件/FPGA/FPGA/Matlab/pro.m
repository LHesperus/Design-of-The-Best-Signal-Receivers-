close all;
clear all;
clc;
MHz=1e+6;
us=1e-6;
%-----------------------���β���-----------------------------
fs=75*MHz;
f0=30*MHz;
B=5*MHz;
T=24*us;
%-----------------------���μ���------------------------------
K=B/T;
Ts=1/fs;
tsam=[0:Ts:T];
LFM_IF=cos(2*pi*(f0-B/2)*tsam+pi*K*tsam .^2);
N=length(LFM_IF);
Fig=figure;
x_axis=(1:N)*Ts/us;
plot(x_axis,LFM_IF,'k');
title('LFM��Ƶ����');xlabel('ʱ��(us)'); ylabel('��һ������');
zoom xon; grid on; 
axis([min(x_axis) max(x_axis) -1.1 1.1]);

wavefft=fftshift(fft(LFM_IF));
showfft=abs(wavefft);
gi=(-fs/2+fs/N:fs/N:fs/2)/MHz;
Fig=figure; 
plot(gi,20*log10(showfft/max(showfft)),'k');
title('LFM�ź�Ƶ��');xlabel('Ƶ��(MHZ)'); ylabel('���ȹ�һ��(dB)');
zoom xon; grid on; 
axis([min(gi) max(gi) -60 5]);
%--------------------------------�������-----------------------------------------
k=Ts:Ts:N*Ts;
LO=exp(j*2*pi*f0*k);
TEMP_I=LFM_IF.*real(LO);
TEMP_I=TEMP_I./max(abs(TEMP_I));
TEMP_Q=LFM_IF.*imag(LO);
TEMP_Q=TEMP_Q./max(abs(TEMP_Q));
N=length(TEMP_I);

Fig=figure;
x_axis=(1:N)*Ts/us;
plot(x_axis,TEMP_I,'r');hold on;
plot(x_axis,TEMP_Q,'b');hold off;
title('�����������(LPFǰ)');xlabel('ʱ��(us)'); ylabel('��һ������');
zoom xon; grid on; 
axis([min(x_axis) max(x_axis) -1.1 1.1]);
lpf_fre=10*MHz;
filter_length=60;
filter_coff=fir1(filter_length,lpf_fre/fs);
I=conv(TEMP_I,filter_coff);
I=I./max(abs(I));
Q=conv(TEMP_Q,filter_coff);
Q=Q./max(abs(Q));
N=length(I);

Fig=figure;
x_axis=(1:N)*Ts/us;
plot(x_axis,I,'r');hold on;
plot(x_axis,Q,'b');hold off;
title('�����������(LPF��)');xlabel('ʱ��(us)'); ylabel('��һ������');
zoom xon; grid on; 
axis([min(x_axis) max(x_axis) -1.1 1.1]);
%----------------------------------��������----------------------------------------
D=10;

BASE_I=I(1:D:N);
BASE_Q=Q(1:D:N);
N=length(BASE_I);

Fig=figure;
x_axis=(1:N)*D*Ts/us;
plot(x_axis,BASE_I,'r');hold on;
plot(x_axis,BASE_Q,'b');hold off;
title('�����������������');xlabel('ʱ��(us)'); ylabel('��һ������');
zoom xon; grid on; 
axis([min(x_axis) max(x_axis) -1.1 1.1]);
%---------------------------ƥ���˲���------------------------------------------
LFM=BASE_I+i*BASE_Q;
PC_FILTER=conj(LFM);

Fig=figure;
x_axis=(1:N)*Ts/us;
plot(x_axis,real(PC_FILTER),'r');hold on;
plot(x_axis,imag(PC_FILTER),'b');hold off;
title('LFMƥ���˲�����Ӧ');xlabel('ʱ��(us)'); ylabel('��һ������');
zoom xon; grid on; 
axis([min(x_axis) max(x_axis) -1.1 1.1]);
%-----------------------------��ѹ������---------------------------------------
PCOUT=conv(LFM,PC_FILTER);
SHOW=abs(PCOUT);
SHOW=SHOW./max(SHOW);
N=length(SHOW);

Fig=figure;
x_axis=(1:N)*Ts/us;
plot(x_axis,SHOW,'k');
title('����ѹ�����(��������)');
xlabel('ʱ��(us)'); ylabel('��һ������');
zoom xon; grid on; axis([min(x_axis) max(x_axis) -0.1 1.1]);

Fig=figure;
x_axis=(1:N)*Ts/us;
plot(x_axis,20*log10(SHOW),'k');
title('����ѹ�����(��������)');
xlabel('ʱ��(us)'); ylabel('��һ������');
zoom xon; grid on; axis([min(x_axis) max(x_axis) -60 5]);
