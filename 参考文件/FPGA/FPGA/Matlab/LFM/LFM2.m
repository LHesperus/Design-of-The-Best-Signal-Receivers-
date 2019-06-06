close all;
clear all;
clc;
MHz=1e+6;
us=1e-6;
%-------------------------波形参数-----------------------------
fs=40*MHz;
f0=30*MHz;
B=10*MHz;
T=10*us;
%-------------------------波形计算-----------------------------
K=B/T;
Ts=1/fs;
tsam=[0:Ts:T];
LFM=exp(j*(2*pi*(fs-B/2)*tsam+pi*K*tsam .^2));N=length(LFM);
%Fig=figure;
figure(1)
x_axis=(1:N)*Ts/us;
plot(x_axis,real(LFM),'r');hold on;
plot(x_axis,abs(LFM),'g');hold on;
plot(x_axis,imag(LFM),'b');hold off;
title('LFM原始波形');xlabel('时间(us)'); ylabel('归一化幅度');
zoom xon; grid on; 
axis([min(x_axis) max(x_axis) -1.1 1.1]);
%-------------------------------------频谱计算-------------------------------------
%wavefft=fftshift(fft(LFM));
wavefft=fft(LFM);
showfft=abs(wavefft);
gi=(-fs/2+fs/N:fs/N:fs/2)/MHz;
%Fig=figure; 
figure(2)
plot(gi,20*log10(showfft/max(showfft)),'k');
title('LFM信号频谱');xlabel('频率(MHZ)'); ylabel('幅度归一化(dB)');
zoom xon; grid on; 
%axis([min(gi) max(gi) -60 5]);
%----------------------------------幅度量化----------------------------------------
WIDTH=12;
WAVEDATA=fix(LFM*(2^(WIDTH-1)-1));
%Fig=figure;
figure(3)
plot(x_axis,real(WAVEDATA),'r');hold on;
plot(x_axis,imag(WAVEDATA),'b');hold off;
title('LFM量化波形');xlabel('时间(us)'); ylabel('量化幅度');
zoom xon; grid on; 
axis([min(x_axis) max(x_axis) -2^(WIDTH-1) 2^(WIDTH-1)]);

