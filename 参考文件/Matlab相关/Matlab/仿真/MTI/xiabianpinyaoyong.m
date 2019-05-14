%%demo of chirp signal
clear all
tao=30e-6;                 %�źų���ʱ��

B=5e6;                     %chirp frequency modulation bandwidth 30MHz
f0=30e6;
K=B/tao;                      %��Ƶб��
fs=40e6;                      %����Ƶ��
Ts=1/fs;                      %��������
N=tao*fs;                     %�������� 
% t=-tao/2:Ts:tao/2;

% Generate LFM
t = -round(tao*fs/2):1:round(tao*fs/2)-1; % ��������� 
lfm = exp(1i*pi*B/tao*(t/fs).^2);

%���Ե�Ƶ�źŵ�ʱƵ��ͼ����
% st=cos(pi*K*t.^2+2*pi*f0*t);  %�������Ե�Ƶ�ź�
figure(1)
subplot(311)
plot(t,real(lfm));
xlabel('Time');
title('���Ե�Ƶ�źŵ�ʵ��');
grid on;
subplot(312)
plot(t,imag(lfm));
xlabel('Time');
title('���Ե�Ƶ�źŵ��鲿');
grid on;
subplot(313)
freq=linspace(0,fs,N);
plot(freq,abs(fft(lfm,N)));
xlabel('Frequency in MHz');
title('���Ե�Ƶ�ź�Ƶ��');
grid on;

%�����±�Ƶ ����I·��Q·�����ź�
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


%%%%%%%%%%%%%%%%%%4����ȡ%%%%%%%%%%%%%%%%%%
ysi11(1:ceil(Nu/2))=ysi1(1:2:Nu);    %��FIR I·����źŽ���2����ȡ  ceil���������ȡ��  ��ysil�е�ǰNu�����и�һ��ȡһ��
ysq11(1:ceil(Nu/2))=ysq1(1:2:Nu);          %��FIR Q·����źŽ���2����ȡ  ceil���������ȡ��


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
