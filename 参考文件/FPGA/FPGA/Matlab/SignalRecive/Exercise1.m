%信号最佳接收，产生LFM信号，参数如下
clc;clear all;
B = 10e6;%信号带宽
T = 6.4e-6;%脉冲宽度
Tr = 51.2e-6;%脉冲周期
f0 = 30e6;%中心频率
Fs = 40e6;%采样频率
N = Tr*Fs;%采样点数

t = linspace(0,Tr,N);%时域点
f = linspace(-Fs/2,Fs/2,N);%基带频域点

%******产生原始LFM线性调频带通信号*****
s = LFM_Gen(t,B,T,f0);%产生LFM中频信号(AD采样后)
sf = abs(fftshift(fft(s,N)));%实信号频谱分析
figure;
subplot(1,2,1);plot(t,s);zoom on;
xlabel('Time'),ylabel('Amplitude'),title('LFM Mid-Frecency Signal');
subplot(1,2,2);plot(f+Fs,sf);zoom on;grid on;
xlabel('Frecency'),ylabel('Normalized Amplitude'),title('Frecency Density');

%****保存LFM中频信号数据******
Ns = T*Fs;
Bit = 12; Max = 2^(Bit-1)-1;
ss = round(Max*s(1:Ns));%产生用于保存的LFM中频信号
for k = 1:Ns; %将量化后的数据转化为补码保存
    if(ss(k)<0) ss(k) = ss(k) + 2*(Max + 1);end;
end;
%  ss = round(Max*s(1:Ns)) + Max;%产生用于保存的LFM中频信号
Data2mif(ss,'LFMDATA.mif',Bit);%保存LFM中频数据至.mif文件

%*****混频将频谱搬移直基带******
s_real = cos(2*pi*30e6*t).*s;%实信号混频，做频谱搬移
s_image = sin(2*pi*30e6*t).*s;%虚信号混频，做频谱搬移
srf = abs(fftshift(fft(s_real,N))); srf = srf/max(srf);
sif = abs(fftshift(fft(s_image,N))); sif = sif/max(sif);
figure;
subplot(2,2,1);plot(s_real);zoom on;
xlabel('Time'),ylabel('Amplitude'),title('Real LFM Signal After Mixing');
subplot(2,2,2);plot(f,srf);zoom on;grid on;
xlabel('Frecency'),ylabel('Normalized Amplitude'),title('Frecency Density');
subplot(2,2,3);plot(t,s_image);zoom on;
xlabel('Time'),ylabel('Amplitude'),title('Image LFM Signal After Mixing');
subplot(2,2,4);plot(f,sif);zoom on;grid on;
xlabel('Frecency'),ylabel('Normalized Amplitude'),title('Frecency Density');

%******信号低通滤波*******
rp = 1;  rs = 20;     % 通带阻带波纹
wf = [5e6 6.5e6];    % 通带阻带截至频率
a = [1 0];        %通带阻带幅度响应
dev = [(10^(rp/20)-1)/(10^(rp/20)+1)  10^(-rs/20)]; %波纹系数
[~,fo,ao,w] = firpmord(wf,a,dev,Fs);   %产生滤波器参数,FN为阶数，w@@@@@@
FN = 64; 
Num = firpm(FN,fo,ao,w);    %强制设置滤波器阶数为64，计算结果为FN=18，效果较差
save('FIRdata.mat','Num');
s_real = conv(s_real,Num);s_real = s_real/max(s_real);%实信号滤波并作归一化处理
s_image = conv(s_image,Num);s_image = s_image/max(s_image);%虚信号滤波并作归一化处理

s_real = s_real(round(FN/2) + 1:N + round(FN/2));%取等长
s_image = s_image(round(FN/2) + 1:N + round(FN/2));%取等长

% 对滤波后的信号做4倍抽取，当前采样率为40M
D = 4;%定义抽取倍数
t = t(1:D:N);s_real = s_real(1:D:N);s_image = s_image(1:D:N);%4倍抽取
Fs = Fs/D; N = round(Tr*Fs); f = linspace(-Fs/2,Fs/2,N);%对抽样频率等相关参数重定义
s = s_real + 1i*s_image;
sf = abs(fftshift(fft(s,N)));dBsf = 20*log10(sf/max(sf));%信号频谱分析
figure;
subplot(1,2,1);plot(t,s_real);zoom on;
xlabel('Time'),ylabel('Amplitude'),title('Real LFM Signal After Mixing');
subplot(1,2,2);plot(t,s_image);zoom on;
xlabel('Time'),ylabel('Amplitude'),title('Image LFM Signal After Mixing');
figure;
subplot(1,2,1);plot(f,sf);zoom on;
xlabel('Frecency'),ylabel('Normalized Amplitude'),title('Frecency Density');
subplot(1,2,2);plot(f,dBsf);zoom on;
xlabel('Frecency'),ylabel('Normalized Amplitude(dB)'),title('Frecency Density');

% *****对信号进行16次周期延拓*********
M = 16;
tll = max(t) - min(t) + (t(2) - t(1));
ttmp = t;
realtmp = s_real;
imagetmp = s_image;
for k = 1:M - 1
    t(:,k*N + 1:(k + 1)*N) = ttmp + k*tll;
    s_real(:,k*N + 1:(k + 1)*N) = realtmp;
    s_image(:,k*N + 1:(k + 1)*N) = imagetmp;
end;
s = s_real + s_image;
figure;plot(t,s_real,'b',t,s_image,'r');grid on;zoom on;
axis([min(t) - tll/3,max(t) + tll/3,-1,1]);
xlabel('t'),ylabel('A'),title('16次周期循环');
figure;plot(t,abs(s));grid on;zoom on;
xlabel('t'),ylabel('A'),title('16次周期循环');

%********脉冲压缩**********8
firPc = conj(s(1:N));%匹配滤波器
y = abs(conv(s,firPc));y = y/max(y);%得出PC输出信号并作归一化处理
t = linspace(0,length(y)/Fs,length(y));%时域点
figure;plot(t,y),grid on,zoom on;
xlabel('Time'),ylabel('Normalized A (dB)'),title('Signal After DCC and PC');
