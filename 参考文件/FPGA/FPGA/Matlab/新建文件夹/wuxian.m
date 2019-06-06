clc
clear all
close all

k=1000;                           
f=0.1*k*k;                          %����Ƶ��
fs1=3.2*k*k;                     %���������
fc=10.9*k*k;                     %�ز�Ƶ��
fo=10.8*k*k;                     %����

t1=1/fs1:1/fs1:20/f;
I=cos(2*pi*fo*t1);            %I·�����ź�
Q=sin(2*pi*fo*t1);            %Q·�����ź�

s=cos(2*pi*fc*t1).*I;        %s=cos(2*pi*fc*t1).*Q
figure(1)
subplot(3,1,1)
plot(t1,s)
xlabel('����');ylabel('����');title('�����ź�')
%��ư���˲���HB1
Fpass = 0.2*k*k;              % ͨ����ֹƵ��
Dpass = 0.001;                % ͨ���Ʋ�
b = firhalfband('minorder', Fpass/(fs1/2), Dpass);
HB1 = dfilt.dffir(b);
%figure(2);freqz(HB1)     %�����˲���Ƶ����Ӧ
s1=filter(HB1,s);
subplot(3,1,2)
plot(s1)
xlabel('����');ylabel('����');title('����HB1�˲�����')
%��һ����ȡ
fs2=fs1/2;
s2=s1(1:2:end);
subplot(3,1,3)
plot(s2)
xlabel('����');ylabel('����');title('��һ����ȡ')
%��Ƶڶ�������˲���
N         = 14;                         % ����
Fpass = 0.2*k*k;                 % ͨ����ֹƵ��
b         = firhalfband(N, Fpass/(fs2/2));
HB2    = dfilt.dffir(b);
s3=filter(HB2,s2);
figure(2)
subplot(3,1,1)
plot(s2)
xlabel('����');ylabel('����');title('��һ����ȡ')
subplot(3,1,2)
plot(s3)
xlabel('����');ylabel('����');title('����HB2�˲�����')
%�ڶ�����ȡ
s4=s3(1:2:end);
subplot(3,1,3)
plot(s4)
xlabel('����');ylabel('����');title('�ڶ�����ȡ')
%���FIR�˲���
fs3=fs2/2;
Fpass = 0.2*k*k;             % ͨ��Ƶ��
Fstop = 0.22*k*k;            % ���Ƶ��
Dpass = 0.05;                 % ͨ���Ʋ�
Dstop = 0.001;                % ����Ʋ�
flag  = 'scale';                 % Sampling Flag
% �������
[N,Wn,BETA,TYPE] = kaiserord([Fpass Fstop]/(fs3/2), [1 0], [Dstop Dpass]);
% ����ϵ��
b  = fir1(N, Wn, TYPE, kaiser(N+1, BETA), flag);
FIR= dfilt.dffir(b);
s5=filter(FIR,s4);
figure(3)
subplot(3,1,1)
plot(s4)
xlabel('����');ylabel('����');title('�ڶ�����ȡ')
subplot(3,1,2)
plot(s5)
xlabel('����');ylabel('����');title('����FIR�˲�����')
%��������ȡ
s6=s5(1:2:end);
subplot(3,1,3)
plot(s6)
xlabel('����');ylabel('����');title('��������ȡ')
%��������ȡ����һ��
figure(4)
subplot(4,1,1)
plot(t1,s);xlabel('����');ylabel('����');title('�����Ƶ�������')
subplot(4,1,2)
plot(s2);xlabel('����');ylabel('����');title('��һ����ȡ')
subplot(4,1,3)
plot(s4);xlabel('����');ylabel('����');title('�ڶ�����ȡ')
subplot(4,1,4)
plot(s6);xlabel('����');ylabel('����');title('��������ȡ')