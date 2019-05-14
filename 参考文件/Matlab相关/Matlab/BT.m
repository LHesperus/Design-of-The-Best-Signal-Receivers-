%���������Ĺ۲��ź�
N = 32;
noise = (randn(1,N)+j*randn(1,N))/sqrt(2);

%���������������ź�
f1 = 0.15;      %�źŵĹ�һ��Ƶ��
f2 = 0.17;
f3 = 0.26;

SNR1 = 30;      %�źŵ������
SNR2 = 30;
SNR3 = 27;

A1 = 10^(SNR1/20);%�źŵķ���
A2 = 10^(SNR2/20);
A3 = 10^(SNR1/20);

signal1 = A1*exp(j*2*pi*f1*(0:N-1));%�����������ź�
signal2 = A2*exp(j*2*pi*f2*(0:N-1));
signal3 = A3*exp(j*2*pi*f3*(0:N-1));

%�����۲�����
un = noise + signal1 + signal2 + signal3;

%����FFT������غ������ټ��㷽��
Uk = fft(un,2*N);%��un����2N���FFT
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



