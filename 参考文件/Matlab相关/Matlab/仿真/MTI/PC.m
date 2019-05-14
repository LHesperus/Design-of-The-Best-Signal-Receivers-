% Pulse Compress
clear all; close all; clc;

% LFM parameter
B       =   4e+6;       % 4MHz����
Tao     =   200e-6;     % 200usʱ��
T       =   2e-3;       % 2ms�����ظ����� 
fs      =   8e+6;       %����Ƶ��
SNR     =   20;         % �����20dB
dis     =   T*fs/2;     % ��Ŀ�������ڻز��м䴦

% Generate LFM
t = -round(Tao*fs/2):1:round(Tao*fs/2)-1; % ��������� 
lfm = (10^(SNR/20))*exp(1i*pi*B/Tao*(t/fs).^2);

figure;
subplot(2,1,1); plot(real(lfm),'b'); title('���Ե�Ƶ�ź�ʵ��');
subplot(2,1,2); plot(imag(lfm),'r'); title('���Ե�Ƶ�ź��鲿');

% Generate echo
echo  = zeros(1,T*fs);
echo(dis:1:dis+Tao*fs-1) = lfm;
noise = normrnd(0,1,1,T*fs) + 1i*normrnd(0,1,1,T*fs);
echo = echo + noise;

figure;
subplot(2,1,1); plot(real(echo),'b'); title('�ز��ź�ʵ��');
subplot(2,1,2); plot(imag(echo),'r'); title('�ز��ź��鲿');

% Generate filter coeff
coeff = conj(fliplr(lfm)).* hamming(Tao*fs).'; %��ת����/�Ӻ�����

figure; freqz(coeff);

% pulse compress
fft_n = 2^(floor(log2(T*fs)) + 1);
pc_res = ifft(fft(echo,fft_n).*fft(coeff,fft_n)); % δ��ȡ����ȫ�˲���

figure;
plot(db(abs(pc_res)/max(abs(pc_res))),'r');  title('��ѹ����ֱ�ͼ');



