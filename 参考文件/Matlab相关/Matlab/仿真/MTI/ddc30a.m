%�����±�Ƶ�������
%�����±�Ƶ����Ҫ���������㣺

%һ����A/D������ĸ�Ƶ/��Ƶ�ź����н���Ƶ�װ��ƣ�ͨ���������������������ֱ����ź����н�������±�Ƶ����Ƶ����
%�����Ի�Ƶ�ϸ߲����ʵ��ź����н��г�ȡ��������ʱ任�����������ź������ܶȡ�
                          
%%%%%ʵ�ʵ������±�Ƶ�ڶԸ�Ƶ/��Ƶ�ź����н���A/D����֮ǰΪ�˷�ֹ����Ƶ�ʻ����Ҫ����Ԥ�˲�����
%%%%�ڶԻ�Ƶ�ϸ߲����ʵ��ź����н��г�ȡ֮ǰ��Ҫͨ��CIC�˲���HB�˲���FIR�˲����Է�ֹ��ȡʱ����Ƶ�׻����
                         
                        
clear all;
close all;
fsamp=96e6;        %fsamp=96MHz �������Ƶ��Ϊ96MHz
Ts=1/fsamp;        %TsΪfsamp�ĵ��� ������������Ts
band=30e6;         %Ԥ��Ĳ�������Ϊ30MHz
Tp=60e-6;          %Ԥ��Ĳ���ʱ������TpΪ60us
N=Tp*fsamp;        %NΪ�������Ƶ�������ʱ������֮������ʾ�ڲ���ʱ������Tp�ڣ���fsamp�Ĳ����ʲ������Եõ��Ĳ�������   N = 5760
u=band/Tp;         %uΪ�������ʱ����ʾ�ڵ�λʱ�����ڵ�Ƶ����ȡ�Ҳ����30M�Ĵ���ֲ���Tp=60us��ʱ�������ϣ���λʱ���Ƶ�����
t=-Tp/2:Tp/N:Tp/2-Tp/N;       %tȡ���-Tp/2��ʼ��Tp/NΪ����ֵ���ӵ�Tp/2-Tp/N��

f0=70e6;           %������ѵ�Ƶ�ź��ز�Ƶ��Ϊ70MHz
xs=cos(2*pi*(f0*t+0.5*u*t.^2));        %������ѵ�Ƶ�źž�fsamp=96MHz��ͨ�������������൱��A/Dת����������ź�����
S0=fft(xs,N);      %S0�Ƕ�A/Dת����������ź����н���N��fft�Ľ����
S1=abs(S0);        %S1�Ƕ�s0��ģ�Ľ����
S2=(S1);
S2=awgn(S2,10);    %��S2��Ƶ���м���10db�ĸ�˹������
f=0:fsamp/N:fsamp-fsamp/N;       %f��ȡ����0��ʼ��fsamp/NΪ����ֱֵ��fsamp-fsamp/N����
figure(1);         %������ƵΪ70MHz�����źŴ���Ϊ30MHz�Ĵ�ͨ�ź�����Ƶ��
plot(f/1e6,20*log10(S2/max(S2)));           %������MHzΪ��λ��������dB��ʽ������S2/max(S2)��ʾ����ô�ͨ�ź�������Է��ȴ�С������ȡ������Ľ������dB����ʽ�ˡ�
title('��ƵΪ70MHz�����źŴ���Ϊ30MHz�Ĵ�ͨ�ź�����Ƶ��');
xlabel('frequency(MHz)');                   %��Ƶ��ͼ�п��Կ����ź�����Ƶ���У�11MHz��41MHz���ͣ�55MHz��85MHz�������֡�
ylabel('Magnitude(dB)');                    %������Ϊ��fsamp=94MHz��ͨ����ʱ����fsamp/2=48MHz��������Ƶ���۵���ԭ���ź�����Ƶ�ף�55M��85M���۵�����11MHz��41MHz���ˡ�
grid on                                     %��������Ƶ����״һ�£�û�з���Ƶ�׻��������Ĵ�ͨ��������fsamp=96MHz��ͨ������ó����ġ�
                                            %�������ʽ���£�fsamp>=4f0/(2n+1) ��fsamp>=2B������f0ָ�ź���������Ƶ�ʣ�Bָ�ź����д��� nȡ��������
 
%NCO��������ģ��%
for t=1:N
    t1=(t-1)*Ts;
    ncoi_c(t)=cos(2*pi*f0*t1);             %����Ƶ��Ϊf0��cos���ر���I·��������������ر����ʱ������A/D���������ͬ���������к�����ˡ�
end
 
for t=1:N
    t1=(t-1)*Ts;
    ncoq_c(t)=sin(2*pi*f0*t1);            %����Ƶ��Ϊf0��sin���ر���Q·��������������ر����ʱ������A/D���������ͬ���������к�����ˡ�
end
ncoi=awgn(ncoi_c,80);         %�Բ�����I·�������м���80dB�ĸ�˹������
ncoq=awgn(ncoq_c,80);         %�Բ�����Q·�������м���80dB�ĸ�˹������
 
f=0:fsamp/N:fsamp-fsamp/N;    %fȡ���0��ʼ��fsamp/NΪ����ֱֵ��fsamp-fsamp/N����
u1=abs(fft(ncoi));            %�Լ����˹��������I·�����ź����н���FFT��ȡģ
u2=abs(fft(ncoq));            %�Լ����˹��������Q·�����ź����н���FFT��ȡģ
figure(2);                    %���������˹�����������������I·�ź�Ƶ��
plot(f/1e6,20*log10(u1/max(u1)));%������MHzΪ��λ��������dB��ʽ
title('�����˹����������������I·�ź�Ƶ��');
xlabel('frequency(MHz)');
ylabel('Magnitude(dB)');
grid on
figure(3);                     %���������˹�����������������Q·�ź�Ƶ��
plot(f/1e6,20*log10(u2/max(u2)));%������MHzΪ��λ��������dB��ʽ
title('�����˹����������������Q·�ź�Ƶ��');
xlabel('frequency(MHz)');
ylabel('Magnitude(dB)');
grid on
 
for n=1:1:N
    ysi(n)=xs(n)*ncoi(n);%A/D��ͨ�������ź����������ֱ���I·�ź����л�Ƶ��ˣ��±�Ƶ��
    ysq(n)=xs(n)*ncoq(n);%A/D��ͨ�������ź����������ֱ���Q·�ź����л�Ƶ��ˣ��±�Ƶ��
end
 
u1=abs(fft(ysi));%��I·�±�Ƶ�����н���FFT��ȡģ�����͵�u1
u2=abs(fft(ysq));%��Q·�±�Ƶ�����н���FFT��ȡģ�����͵�u2
f=0:fsamp/N:fsamp-fsamp/N;%fȡ���0��ʼ����fsamp/NΪ����ֱֵ��fsamp-fsamp/N����
figure(4);%��������±�Ƶ���I·�ź�Ƶ��
plot(f/1e6,20*log10(u1/max(u1)));
title('�ź�����I·�±�Ƶ�����');
xlabel('frequency(MHz)');
ylabel('Magnitude(dB)');
grid on
figure(5);%��������±�Ƶ���Q·�ź�Ƶ��
plot(f/1e6,20*log10(u2/max(u2)));
title('�ź�����Q·�±�Ƶ�����');
xlabel('frequency(MHz)');
ylabel('Magnitude(dB)');
grid on

u=abs(fft(ysi-j*ysq));%u=u1+u2�����±�Ƶ����ź����н���FFT,ȡģ���͵�u
figure(6);%�����±�Ƶ���I+JQ�ź�Ƶ��
plot(f/1e6,20*log10(u/max(u)));
title('�ź������±�Ƶ�������I+JQ)');
xlabel('frequency(MHz)');
ylabel('Magnitude(dB)');
grid on
 
%����Remez�㷨��Ƶ�ͨFIR�˲���
%����Ƶĵ�ͨFIR�˲����������²����������ʣ�fs=96MHz��ͨ����ֹƵ�ʣ�15MHz�������ʼƵ�ʣ�22.5MHz����С˥����80dB��ͨ�����ƣ�0.01dB��  
fs=fsamp;
band=30e6;                                                 %�˲�������
gdd=7.5e6;                                                 %�˲������ɴ��� 
wp=(band/2)*2*pi/fs;                                       %ͨ����ֹƵ�ʹ�һ��
ws=(band/2+gdd)*2*pi/fs;                                   %�����ʼƵ�ʹ�һ��
tr_width=gdd*2*pi/fs;                                      %���ɴ����һ��
rp=0.01;                                                   %ͨ������С��0.01dB
rs=80;                                                     %��С���˥��80dB
f=[band/2 band/2+gdd];                                     %��ͨ�˲�����f����:f=[ͨ����ֹƵ�� �����ʼƵ��]
a=[1 0];                                                   %��ͨ�˲�����ĸΪ1��
dev=[(10^(rp/20)-1)/(10^(rp/20)+1) 10^(-rs/20)];           %��1ͨ�������ϵ������2��������ϵ��
[NN,fo,ao,w]=remezord(f,a,dev,fs);                         %����remezord��������FIR�˲�������NN��NN=54��
fira=remez(NN,fo,ao,w);                                    %����remez��������FIR��ͨ�˲������
figure(7);                                                 %�����FIR�˲���Ƶ��ͼ
freqz(fira,1,1024,fs);                                     %�����˲���fira��Ƶ����Ӧ
title('�����FIR�˲���Ƶ��ͼ');
                                                           %freqz(b,a,...) plots the magnitude and unwrapped phase of the frequency response of the filter.
[hf,f1]=freqz(fira,1,NN,fs);
                                                           % [h,f]=freqz(b,a,l,fs) returns the frequency response vector h and the corresponding frequency
                                                           %vector f for the digital filter whose transfer function
                                                           %is determined by the (real or complex) numerator and denominator polynomials represented in the vectors b and a,
                                                           %respectively. The vectors h and f are both of length l. For this syntax, the frequency response
                                                           %is calculated using the sampling frequency specified by the scalar fs (inhertz). The frequency vector f is calculated 
                                                           %in units of hertz (Hz). The frequency vector f has values ranging from 0 to fs/2Hz.
figure(8);      %FIR1��ͨ�˲�����Ƶ��ͼ
f=f1;
adg=1*20*log10(abs(hf));
plot(f/1e6,adg);
grid on
title('FIR1 Magnitude Response(dB)');
xlabel('frequency(MHz)');
ylabel('Magnitude(dB)');
 
ysi1=conv(fira,ysi);                     %�±�Ƶ��I·�ź�ͨ�������FIR�˲���   ʱ����˵�Ч��Ƶ����
ysq1=conv(fira,ysq);                     %�±�Ƶ��Q·�ź�ͨ�������FIR�˲���   ʱ����˵�Ч��Ƶ����
 
Nu=length(ysi1);
f=0:fs/Nu:fs-fs/Nu;                     %fȡֵ��0��ʼ���Բ���ֵΪfs/Nu��ֱ��fs-fs/Nu������
figure(9);                              %�����������FIR�˲����˲����I·�ź����
adg=abs(fft(ysi1));
plot(f/1e6,20*log10(adg/max(adg)));
grid on
title('�������FIR�˲����˲����I·�ź����');
xlabel('frequency(MHz)');
ylabel('Magnitude(dB)');
Nu=length(ysq1);
f=0:fs/Nu:fs-fs/Nu;
figure(10);                             %�����������FIR�˲����˲����Q·�ź����
adg=abs(fft(ysq1));
plot(f/1e6,20*log10(adg/max(adg)));
grid on
title('�������FIR�˲����˲����Q·�ź����');
xlabel('frequency(MHz)');
ylabel('Magnitude(dB)');
 
figure(11);
ysi_IQ1=ysi1-j*ysq1;               %ysi_IQ1=ysi1-j*ysq1???????????????
adg=abs(fft(ysi_IQ1));             %�Ծ��������FIR�˲����˲�����źŽ��кϲ������Ժϲ�����źŽ���FFT�������adg��
plot(f/1e6,20*log10(adg/max(adg)));
grid on
title('�����FIR�˲�������ź�Ƶ��(I+JQ)');
xlabel('frequency(MHz)');
ylabel('Magnitude(dB)');
 
ysi11(1:ceil(Nu/2))=ysi1(1:2:Nu);                         %��FIR I·����źŽ���2����ȡ  ceil���������ȡ��  ��ysil�е�ǰNu�����и�һ��ȡһ��
ysq11(1:ceil(Nu/2))=ysq1(1:2:Nu);                         %��FIR Q·����źŽ���2����ȡ  ceil���������ȡ��
 
figure(12);
Nu=length(ysi11);
adg=abs(fft(ysi11));
f=0:fs/(2*Nu):fs/2-fs/(2*Nu);
plot(f/1e6,20*log10(adg/max(adg)));
grid on
title('dec2 Magnitude Response(dB) (I)');       %������±�Ƶ��ͨ�������FIR�˲����˲��������2����ȡ�������±�ƵI·�ź�Ƶ��ͼ
xlabel('frequency(MHz)');
ylabel('Magnitude(dB)');
 
figure(13);
Nu=length(ysq11);
adg=abs(fft(ysq11));
f=0:fs/(2*Nu):fs/2-fs/(2*Nu);
plot(f/1e6,20*log10(adg/max(adg)));
grid on
title('dec2 Magnitude Response(dB) (Q)');      %������±�Ƶ��ͨ�������FIR�˲����˲��������2����ȡ�������±�ƵQ·�ź�Ƶ��ͼ
xlabel('frequency(MHz)');
ylabel('Magnitude(dB)');

ysout=ysi11-j*ysq11;                          %�Ծ��±�Ƶ��ͨ�������FIR�˲����˲��������2����ȡ�������±�ƵI/Q��·�ź����н��кϲ��������ysout��
 
figure(14);                                   %ԭA/D�����ź����о��±�Ƶ��2���������Ƶ��(I+jQ)
Nu=length(ysout);
adg=abs(fft(ysout));
f=0:fs/(2*Nu):fs/2-fs/(2*Nu);
plot(f/1e6,20*log10(adg/max(adg)));
grid on
title('ԭA/D�����ź����о��±�Ƶ��2���������Ƶ��(I+jQ)');
xlabel('frequency(MHz)');
ylabel('Magnitude(dB)');

