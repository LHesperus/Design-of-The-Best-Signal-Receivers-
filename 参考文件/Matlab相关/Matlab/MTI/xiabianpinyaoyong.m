%%demo of chirp signal
clear all
tao=30e-6;                 %信号持续时间

B=5e6;                     %chirp frequency modulation bandwidth 30MHz
f0=30e6;
K=B/tao;                      %调频斜率
fs=40e6;                      %采样频率
Ts=1/fs;                      %采样周期
N=tao*fs;                     %采样点数 
t=-tao/2:Ts:tao/2;

%线性调频信号的时频谱图分析
st=cos(pi*K*t.^2+2*pi*f0*t);  %产生线性调频信号
figure(1)
subplot(211)
plot(t,st);
xlabel('Time');
title('线性调频信号的实部');
grid on;
subplot(212)
freq=linspace(0,fs,N);
plot(freq,abs(fft(st,N)));
xlabel('Frequency in MHz');
title('线性调频信号频谱');
grid on;

%数字下变频 输入I路和Q路正交信号
y1=cos(2*pi*f0*t);
y2=sin(2*pi*f0*t);
xi=st.*y1;
xq=st.*y2;
fft_xi=fftshift(abs(fft(xi,N)));
fft_xq=fftshift(abs(fft(xq,N)));
figure(2)
subplot(211)
plot(t,xi);
title('输入I信号时域图')
xlabel('t'),ylabel('幅度');
grid;
subplot(212)
plot(freq,fft_xi);
title('输入I信号的频谱图')
xlabel('f/Hz'),ylabel('幅度');
grid;
figure(3)
subplot(211)
plot(t,xq);
title('输入Q信号时域图')
xlabel('t'),ylabel('幅度');
grid;
subplot(212)
plot(freq,fft_xq);
title('输入Q信号频谱图')
xlabel('f/Hz'),ylabel('幅度');
grid;


%低通滤波器
wn=pi/16;                     %通带截止频率
ws=pi/16;                     %阻带截止频率
N1=ceil(6.6*pi/ws);
b=fir1(N1-1,wn/pi,'low',hamming(N1)); 
[H,W]=freqz(b,1);
Hout=20*log10(abs(H));
figure(4)
plot(W/pi,Hout)
title('滤波器响应函数');
grid;

%处理I路和Q路信号
bf=fft(b,N);
w=linspace(-fs/2,fs/2,N);
yi=fftshift(fft_xi.*abs(bf));
yq=fftshift(fft_xq.*abs(bf));
figure(5)
subplot(211)
plot(w,yi);
xlabel('f/Hz'),ylabel('幅度');
title('滤波后输出的I路信号');
grid;
subplot(212)
plot(w,yq);
xlabel('f/Hz'),ylabel('幅度');
title('滤波后输出的Q路信号');
grid;
