close all;clear all;clc;

%% 波形参数
Fs  = 32e6;
Fif = 13.8e6;
F0  = 400e3;
Bs  = 100e3;
T   = 2e-4;

%% 波形计算
% K  = Bs/T;
Ts = 1/Fs;
t1 = (0:Ts:T);
N1 = length(t1);
sig_cos = cos(2*pi*(Fif-Bs/2)*t1)+cos(2*pi*(Fif+Bs/2)*t1);

figure;
plot(t1,sig_cos,'k');
title('原始中频波形');
xlabel('时间/s'); 
ylabel('归一化幅度');
zoom xon; grid on; 
axis([min(t1) max(t1) -1.1 1.1]);

sig_fft1 = fftshift(fft(sig_cos));
showfft1 = abs(sig_fft1);
f1 = (-N1/2:N1/2-1)*Fs/N1;
figure; 
plot(f1,20*log10(showfft1/max(showfft1)),'k');
title('原始信号频谱');
xlabel('频率/Hz'); 
ylabel('幅度归一化/dB');
zoom xon; grid on; 
axis([min(f1) max(f1) -60 5]);

%% 数字下变频
t2 = (1:N1)*Ts;
LO = exp(1i*2*pi*(Fif-F0)*t2);
TEMP_I = sig_cos.*real(LO);
TEMP_I = TEMP_I./max(abs(TEMP_I));
TEMP_Q = sig_cos.*imag(LO);
TEMP_Q = TEMP_Q./max(abs(TEMP_Q));

figure;
plot(t2,TEMP_I,'r');hold on;
plot(t2,TEMP_Q,'b');hold off;
legend('real part','imag part');
title('数字下变频信号(LPF前)');
xlabel('时间/s');
ylabel('归一化幅度');
zoom xon; grid on; 
axis([min(t2) max(t2) -1.1 1.1]);

sig_fft2 = fftshift(fft(TEMP_I+1i*TEMP_Q));
showfft2 = abs(sig_fft2);
f2 = (-N1/2:N1/2-1)*Fs/N1;
figure; 
plot(f2,20*log10(showfft2/max(showfft2)),'k');
title('数字下变频信号频谱(LPF前)');
xlabel('频率/Hz'); 
ylabel('幅度归一化/dB');
zoom xon; grid on; 
axis([min(f2) max(f2) -60 5]);

Hd = FilterLPF;
I = conv(Hd,TEMP_I);
I = I./max(abs(I));
Q = conv(Hd,TEMP_Q);
Q = Q./max(abs(Q));

N2 = length(I);
figure;
t3 = (1:N2)*Ts;
plot(t3,I,'r');hold on;
plot(t3,Q,'b');hold off;
title('数字下变频信号(LPF后)');
xlabel('时间/s'); 
ylabel('归一化幅度');
zoom xon; grid on; 
axis([min(t3) max(t3) -1.1 1.1]);

sig_fft3 = fftshift(fft(I +1i*Q));
showfft3 = abs(sig_fft3);
f2 = (-length(showfft3)/2:length(showfft3)/2-1)*Fs/length(showfft3);
figure; 
plot(f2,20*log10(showfft3/max(showfft3)),'k');
title('数字下变频信号频谱(LPF后)');
xlabel('频率/Hz'); 
ylabel('幅度归一化/dB');
zoom xon; grid on; 
axis([min(f2) max(f2) -60 5]);

%% 降采样率 抽取率为100=5*2*2*5
D1 = 5;
BASE_I1 = I(1:D1:N2);
BASE_Q1 = Q(1:D1:N2);
N3 = length(BASE_I1);

figure;
t4 = (1:N3)*D1*Ts;
plot(t4,BASE_I1,'r');hold on;
plot(t4,BASE_Q1,'b');hold off;
title([num2str(D1),'倍降采样后信号(LPF后)']);
xlabel('时间/s');
ylabel('归一化幅度');
zoom xon; grid on; 
axis([min(t4) max(t4) -1.1 1.1]);

sig_fft4 = fftshift(fft(BASE_I1+1i*BASE_Q1));
showfft4 = abs(sig_fft4);
f3 = (-N3/2:N3/2-1)*Fs/D1/N3;
figure; 
plot(f3,20*log10(showfft4/max(showfft4)),'k');
title([num2str(D1),'倍降采样后信号(LPF后)']);
xlabel('频率/Hz'); 
ylabel('幅度归一化/dB');
zoom xon; grid on; 
axis([min(f3) max(f3) -60 5]);
