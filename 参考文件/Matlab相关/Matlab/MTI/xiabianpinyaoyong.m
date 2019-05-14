%%demo of chirp signal
clear all
tao=30e-6;                 %�źų���ʱ��

B=5e6;                     %chirp frequency modulation bandwidth 30MHz
f0=30e6;
K=B/tao;                      %��Ƶб��
fs=40e6;                      %����Ƶ��
Ts=1/fs;                      %��������
N=tao*fs;                     %�������� 
t=-tao/2:Ts:tao/2;

%���Ե�Ƶ�źŵ�ʱƵ��ͼ����
st=cos(pi*K*t.^2+2*pi*f0*t);  %�������Ե�Ƶ�ź�
figure(1)
subplot(211)
plot(t,st);
xlabel('Time');
title('���Ե�Ƶ�źŵ�ʵ��');
grid on;
subplot(212)
freq=linspace(0,fs,N);
plot(freq,abs(fft(st,N)));
xlabel('Frequency in MHz');
title('���Ե�Ƶ�ź�Ƶ��');
grid on;

%�����±�Ƶ ����I·��Q·�����ź�
y1=cos(2*pi*f0*t);
y2=sin(2*pi*f0*t);
xi=st.*y1;
xq=st.*y2;
fft_xi=fftshift(abs(fft(xi,N)));
fft_xq=fftshift(abs(fft(xq,N)));
figure(2)
subplot(211)
plot(t,xi);
title('����I�ź�ʱ��ͼ')
xlabel('t'),ylabel('����');
grid;
subplot(212)
plot(freq,fft_xi);
title('����I�źŵ�Ƶ��ͼ')
xlabel('f/Hz'),ylabel('����');
grid;
figure(3)
subplot(211)
plot(t,xq);
title('����Q�ź�ʱ��ͼ')
xlabel('t'),ylabel('����');
grid;
subplot(212)
plot(freq,fft_xq);
title('����Q�ź�Ƶ��ͼ')
xlabel('f/Hz'),ylabel('����');
grid;


%��ͨ�˲���
wn=pi/16;                     %ͨ����ֹƵ��
ws=pi/16;                     %�����ֹƵ��
N1=ceil(6.6*pi/ws);
b=fir1(N1-1,wn/pi,'low',hamming(N1)); 
[H,W]=freqz(b,1);
Hout=20*log10(abs(H));
figure(4)
plot(W/pi,Hout)
title('�˲�����Ӧ����');
grid;

%����I·��Q·�ź�
bf=fft(b,N);
w=linspace(-fs/2,fs/2,N);
yi=fftshift(fft_xi.*abs(bf));
yq=fftshift(fft_xq.*abs(bf));
figure(5)
subplot(211)
plot(w,yi);
xlabel('f/Hz'),ylabel('����');
title('�˲��������I·�ź�');
grid;
subplot(212)
plot(w,yq);
xlabel('f/Hz'),ylabel('����');
title('�˲��������Q·�ź�');
grid;
