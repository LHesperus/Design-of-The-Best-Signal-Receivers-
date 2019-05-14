% Pulse Compress
clear all; close all; clc;

% LFM parameter
B       =   4e+6;       % 4MHz带宽
Tao     =   200e-6;     % 200us时宽
T       =   2e-3;       % 2ms脉冲重复周期 
fs      =   8e+6;       %采样频率
SNR     =   20;         % 信噪比20dB
dis     =   T*fs/2;     % 将目标设置在回波中间处

% Generate LFM
t = -round(Tao*fs/2):1:round(Tao*fs/2)-1; % 脉冲采样点 
lfm = (10^(SNR/20))*exp(1i*pi*B/Tao*(t/fs).^2);

figure;
subplot(2,1,1); plot(real(lfm),'b'); title('线性调频信号实部');
subplot(2,1,2); plot(imag(lfm),'r'); title('线性调频信号虚部');

% Generate echo
echo  = zeros(1,T*fs);
echo(dis:1:dis+Tao*fs-1) = lfm;
noise = normrnd(0,1,1,T*fs) + 1i*normrnd(0,1,1,T*fs);
echo = echo + noise;

figure;
subplot(2,1,1); plot(real(echo),'b'); title('回波信号实部');
subplot(2,1,2); plot(imag(echo),'r'); title('回波信号虚部');

% Generate filter coeff
coeff = conj(fliplr(lfm)).* hamming(Tao*fs).'; %翻转共轭/加汉明窗

figure; freqz(coeff);

% pulse compress
fft_n = 2^(floor(log2(T*fs)) + 1);
pc_res = ifft(fft(echo,fft_n).*fft(coeff,fft_n)); % 未截取不完全滤波点

figure;
plot(db(abs(pc_res)/max(abs(pc_res))),'r');  title('脉压结果分贝图');



