%产生噪声的观测信号
N = 32;
noise = (randn(1,N)+j*randn(1,N))/sqrt(2);

%产生三个复正弦信号
f1 = 0.15;      %信号的归一化频率
f2 = 0.17;
f3 = 0.26;

SNR1 = 30;      %信号的信噪比
SNR2 = 30;
SNR3 = 27;

A1 = 10^(SNR1/20);%信号的幅度
A2 = 10^(SNR2/20);
A3 = 10^(SNR1/20);

signal1 = A1*exp(j*2*pi*f1*(0:N-1));%产生复正弦信号
signal2 = A2*exp(j*2*pi*f2*(0:N-1));
signal3 = A3*exp(j*2*pi*f3*(0:N-1));

%产生观测样本
un = noise + signal1 + signal2 + signal3;

%基于FFT的自相关函数快速计算方法
Uk = fft(un,2*N);%对un进行2N点的FFT
Sk = (1/N)*abs(Uk).^2;
r0 = ifft(Sk);
r1 = [r0(N+2:2*N),r0(1:N)];

n = 1:2*N-1;
subplot(221);
plot(n,real(r1));
grid
t=-2*pi:.001:2*pi;
subplot(222);
plot(t/pi,sin(t));
grid 



