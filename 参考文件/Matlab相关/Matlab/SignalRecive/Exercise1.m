%�ź���ѽ��գ�����LFM�źţ���������
clc;clear all;
B = 10e6;%�źŴ���
T = 6.4e-6;%������
Tr = 51.2e-6;%��������
f0 = 30e6;%����Ƶ��
Fs = 40e6;%����Ƶ��
N = Tr*Fs;%��������

t = linspace(0,Tr,N);%ʱ���
f = linspace(-Fs/2,Fs/2,N);%����Ƶ���

%******����ԭʼLFM���Ե�Ƶ��ͨ�ź�*****
s = LFM_Gen(t,B,T,f0);%����LFM��Ƶ�ź�(AD������)
sf = abs(fftshift(fft(s,N)));%ʵ�ź�Ƶ�׷���
figure;
subplot(1,2,1);plot(t,s);zoom on;
xlabel('Time'),ylabel('Amplitude'),title('LFM Mid-Frecency Signal');
subplot(1,2,2);plot(f+Fs,sf);zoom on;grid on;
xlabel('Frecency'),ylabel('Normalized Amplitude'),title('Frecency Density');

%****����LFM��Ƶ�ź�����******
Ns = T*Fs;
Bit = 12; Max = 2^(Bit-1)-1;
ss = round(Max*s(1:Ns));%�������ڱ����LFM��Ƶ�ź�
for k = 1:Ns; %�������������ת��Ϊ���뱣��
    if(ss(k)<0) ss(k) = ss(k) + 2*(Max + 1);end;
end;
%  ss = round(Max*s(1:Ns)) + Max;%�������ڱ����LFM��Ƶ�ź�
Data2mif(ss,'LFMDATA.mif',Bit);%����LFM��Ƶ������.mif�ļ�

%*****��Ƶ��Ƶ�װ���ֱ����******
s_real = cos(2*pi*30e6*t).*s;%ʵ�źŻ�Ƶ����Ƶ�װ���
s_image = sin(2*pi*30e6*t).*s;%���źŻ�Ƶ����Ƶ�װ���
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

%******�źŵ�ͨ�˲�*******
rp = 1;  rs = 20;     % ͨ���������
wf = [5e6 6.5e6];    % ͨ���������Ƶ��
a = [1 0];        %ͨ�����������Ӧ
dev = [(10^(rp/20)-1)/(10^(rp/20)+1)  10^(-rs/20)]; %����ϵ��
[~,fo,ao,w] = firpmord(wf,a,dev,Fs);   %�����˲�������,FNΪ������w@@@@@@
FN = 64; 
Num = firpm(FN,fo,ao,w);    %ǿ�������˲�������Ϊ64��������ΪFN=18��Ч���ϲ�
save('FIRdata.mat','Num');
s_real = conv(s_real,Num);s_real = s_real/max(s_real);%ʵ�ź��˲�������һ������
s_image = conv(s_image,Num);s_image = s_image/max(s_image);%���ź��˲�������һ������

s_real = s_real(round(FN/2) + 1:N + round(FN/2));%ȡ�ȳ�
s_image = s_image(round(FN/2) + 1:N + round(FN/2));%ȡ�ȳ�

% ���˲�����ź���4����ȡ����ǰ������Ϊ40M
D = 4;%�����ȡ����
t = t(1:D:N);s_real = s_real(1:D:N);s_image = s_image(1:D:N);%4����ȡ
Fs = Fs/D; N = round(Tr*Fs); f = linspace(-Fs/2,Fs/2,N);%�Գ���Ƶ�ʵ���ز����ض���
s = s_real + 1i*s_image;
sf = abs(fftshift(fft(s,N)));dBsf = 20*log10(sf/max(sf));%�ź�Ƶ�׷���
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

% *****���źŽ���16����������*********
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
xlabel('t'),ylabel('A'),title('16������ѭ��');
figure;plot(t,abs(s));grid on;zoom on;
xlabel('t'),ylabel('A'),title('16������ѭ��');

%********����ѹ��**********8
firPc = conj(s(1:N));%ƥ���˲���
y = abs(conv(s,firPc));y = y/max(y);%�ó�PC����źŲ�����һ������
t = linspace(0,length(y)/Fs,length(y));%ʱ���
figure;plot(t,y),grid on,zoom on;
xlabel('Time'),ylabel('Normalized A (dB)'),title('Signal After DCC and PC');
