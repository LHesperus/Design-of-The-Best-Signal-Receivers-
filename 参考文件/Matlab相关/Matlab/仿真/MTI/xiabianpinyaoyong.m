%%demo of chirp signal
clear all
tao=30e-6;                 %信号持续时间

B=5e6;                     %chirp frequency modulation bandwidth 30MHz
f0=30e6;
K=B/tao;                      %调频斜率
fs=40e6;                      %采样频率
Ts=1/fs;                      %采样周期
N=tao*fs;                     %采样点数 
% t=-tao/2:Ts:tao/2;

% Generate LFM
t = -round(tao*fs/2):1:round(tao*fs/2)-1; % 脉冲采样点 
lfm = exp(1i*pi*B/tao*(t/fs).^2);

%线性调频信号的时频谱图分析
% st=cos(pi*K*t.^2+2*pi*f0*t);  %产生线性调频信号
figure(1)
subplot(311)
plot(t,real(lfm));
xlabel('Time');
title('线性调频信号的实部');
grid on;
subplot(312)
plot(t,imag(lfm));
xlabel('Time');
title('线性调频信号的虚部');
grid on;
subplot(313)
freq=linspace(0,fs,N);
plot(freq,abs(fft(lfm,N)));
xlabel('Frequency in MHz');
title('线性调频信号频谱');
grid on;

%数字下变频 输入I路和Q路正交信号
% add by guang
n=-N/2:1:N/2-1;
% si=ss(r,:).*cos(2*pi*f0*n/fs);
% sq=-ss(r,:).*sin(2*pi*f0*n/fs);
% I=conv(si,b);
% Q=conv(sq,b);
% ddcs(r,:)=I+j*Q;  
%end add 

% y1=cos(2*pi*f0*t);
% y2=sin(2*pi*f0*t);
y1=cos(2*pi*f0*n/fs);
y2=sin(2*pi*f0*n/fs);
xi=lfm.*y1;
xq=lfm.*y2;
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


%%%%%%%%%%%%%%%%%%4倍抽取%%%%%%%%%%%%%%%%%%
ysi11(1:ceil(Nu/2))=ysi1(1:2:Nu);    %对FIR I路输出信号进行2倍抽取  ceil函数是向高取整  在ysil中的前Nu个数中隔一个取一个
ysq11(1:ceil(Nu/2))=ysq1(1:2:Nu);          %对FIR Q路输出信号进行2倍抽取  ceil函数是向高取整


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
