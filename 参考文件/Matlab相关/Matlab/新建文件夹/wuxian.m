clc
clear all
close all

k=1000;                           
f=0.1*k*k;                          %基带频率
fs1=3.2*k*k;                     %最初采样率
fc=10.9*k*k;                     %载波频率
fo=10.8*k*k;                     %本振

t1=1/fs1:1/fs1:20/f;
I=cos(2*pi*fo*t1);            %I路本振信号
Q=sin(2*pi*fo*t1);            %Q路本振信号

s=cos(2*pi*fc*t1).*I;        %s=cos(2*pi*fc*t1).*Q
figure(1)
subplot(3,1,1)
plot(t1,s)
xlabel('点数');ylabel('幅度');title('基带信号')
%设计半带滤波器HB1
Fpass = 0.2*k*k;              % 通带截止频率
Dpass = 0.001;                % 通带纹波
b = firhalfband('minorder', Fpass/(fs1/2), Dpass);
HB1 = dfilt.dffir(b);
%figure(2);freqz(HB1)     %画出滤波器频率响应
s1=filter(HB1,s);
subplot(3,1,2)
plot(s1)
xlabel('点数');ylabel('幅度');title('经过HB1滤波器后')
%第一级抽取
fs2=fs1/2;
s2=s1(1:2:end);
subplot(3,1,3)
plot(s2)
xlabel('点数');ylabel('幅度');title('第一级抽取')
%设计第二级半带滤波器
N         = 14;                         % 阶数
Fpass = 0.2*k*k;                 % 通带截止频率
b         = firhalfband(N, Fpass/(fs2/2));
HB2    = dfilt.dffir(b);
s3=filter(HB2,s2);
figure(2)
subplot(3,1,1)
plot(s2)
xlabel('点数');ylabel('幅度');title('第一级抽取')
subplot(3,1,2)
plot(s3)
xlabel('点数');ylabel('幅度');title('经过HB2滤波器后')
%第二级抽取
s4=s3(1:2:end);
subplot(3,1,3)
plot(s4)
xlabel('点数');ylabel('幅度');title('第二级抽取')
%设计FIR滤波器
fs3=fs2/2;
Fpass = 0.2*k*k;             % 通带频率
Fstop = 0.22*k*k;            % 阻带频率
Dpass = 0.05;                 % 通带纹波
Dstop = 0.001;                % 阻带纹波
flag  = 'scale';                 % Sampling Flag
% 计算阶数
[N,Wn,BETA,TYPE] = kaiserord([Fpass Fstop]/(fs3/2), [1 0], [Dstop Dpass]);
% 计算系数
b  = fir1(N, Wn, TYPE, kaiser(N+1, BETA), flag);
FIR= dfilt.dffir(b);
s5=filter(FIR,s4);
figure(3)
subplot(3,1,1)
plot(s4)
xlabel('点数');ylabel('幅度');title('第二级抽取')
subplot(3,1,2)
plot(s5)
xlabel('点数');ylabel('幅度');title('经过FIR滤波器后')
%第三级抽取
s6=s5(1:2:end);
subplot(3,1,3)
plot(s6)
xlabel('点数');ylabel('幅度');title('第三级抽取')
%将三级抽取画在一起
figure(4)
subplot(4,1,1)
plot(t1,s);xlabel('点数');ylabel('幅度');title('解调混频基带输出')
subplot(4,1,2)
plot(s2);xlabel('点数');ylabel('幅度');title('第一级抽取')
subplot(4,1,3)
plot(s4);xlabel('点数');ylabel('幅度');title('第二级抽取')
subplot(4,1,4)
plot(s6);xlabel('点数');ylabel('幅度');title('第三级抽取')