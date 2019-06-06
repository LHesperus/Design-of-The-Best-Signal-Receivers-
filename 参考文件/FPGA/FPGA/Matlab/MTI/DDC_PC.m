% ���Ե�Ƶ�ź�����ѹ��-�����±�Ƶ���� DDC 
clc;
clear all;
close all;
B=5e6;          %%�źŴ���
f0=30e6;        %��Ƶ
fs=40e6;        %����Ƶ��
fs1=(20/3)*1e6; %%��ȡ��Ƶ��
T=24.9e-6;      %%ʱ��
k=B/T;
fk=127;         %%��DDCʱ�ĵ�ͨ�˲����Ľ���

fid=fopen('20090724fc1yindao4-0.dat','r');
sss=fread(fid,32*4096,'int16');  
fclose(fid);
figure(100);plot(sss);grid on;xlabel('����');ylabel('����');title('32�������ź�ʱ����');grid on;

L=length(sss);
N=4096;
R=fix(L/N);
for r=1:R
    ss(r,:)=sss((r-1)*N+1:1:r*N);
end
figure(1);plot(ss(R,:));xlabel('����');ylabel('����');title('�ź�ʱ����');grid on;

%%%%%%%%%%%%%%%   ��ͨ�˲���  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ff=[0 1/8 1/4 1];
aa=[1 1 0 0];
b=firpm(fk,ff,aa);
[h,w]=freqz(b,1,1024);
% figure(2);
% f=linspace(0,fs/2,1024);
% plot(f/1e6,20*log10(abs(h)));xlabel('f/Mhz');ylabel('dB');title('��ͨ�˲����ķ�Ƶ��Ӧ');grid on;

%%%%%%%%%%%%%%%    DDC     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ddcs=zeros(R,N+fk);
for r=1:1:R
    n=-N/2:1:N/2-1;
    si=ss(r,:).*cos(2*pi*f0*n/fs);
    sq=-ss(r,:).*sin(2*pi*f0*n/fs);
    I=conv(si,b);
    Q=conv(sq,b);
    ddcs(r,:)=I+j*Q;                        
end
m=1:N+fk;
figure(3);
subplot(211);plot(m,I);xlabel('����');ylabel('����');title('DDC��I·�źŲ���');
subplot(212);plot(m,Q);xlabel('����');ylabel('����');title('DDC��Q·�źŲ���');
% figure(4);
% subplot(211);plot(m,abs(ddcs(R,:)));xlabel('����');ylabel('����');title('DDC���ź�ʱ����');grid on;
% sf=fftshift(fft(ddcs(R,:),2048));
% f=linspace(0,fs,2048);
% subplot(212);plot(f/1e6,abs(sf));xlabel('MHz');ylabel('����');title('DDC���ź�Ƶ��');grid on;

%%%%%%%%%%%%%%%%%%%    6����ȡ   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PD=fix((N+fk)/6);
cddcs=zeros(R,PD);
for r=1:R
    dd=ddcs(r,:);
    for pd=1:PD
        dd1(pd)=dd(6*pd);
    end
    cddcs(r,:)=dd1;
end

%%%��ȡ֮���źŵļӴ���ѹ%%%%%%%%%%%%%%%%%%%%%%%
N1=T*fs;
t=linspace(-T/2,T/2,N1);        
hs=exp(j*k*pi*t.^2);%%%����δ��ȡ�ź�
ha=conj(fliplr(hs));
P=fix(N1/6);
for p=1:P
    hb(p)=ha(6*p); %%%%%%%%%%��ƥ���˲������г�ȡ
end

window=hamming(P);        %%%%%%%��hamming��
chmyw=zeros(R,PD+P-1);                      
h=hb.*window.';
for r=1:R
    chmyw(r,:)=conv(cddcs(r,:),h);
end
figure(6);
plot(20*log10(abs(chmyw(R,:))/max(abs(chmyw(R,:)))));xlabel('����');ylabel('dB');title('��ȡ֮���źżӴ���ѹ');grid on;
figure(7);
plot((abs(chmyw(R,:))));xlabel('����');ylabel('����');title('��ȡ֮���źżӴ���ѹ');grid on;



