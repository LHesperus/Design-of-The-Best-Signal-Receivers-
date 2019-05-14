clear all;
close all;
clc;
%%  参数设置
Prf_N=16;               %脉冲数目:16
%Prf_T=51.2e-6;         %脉冲重复周期：51.2us
N=256;
n=0:255;
f0=30e6;                %载波频率:30MHz
B=10e6;                 %信号带宽:10MHz
f1 = 10e6; 
D=4;                    %4倍抽取
tao=6.4e-6;             %脉宽:6.4us
tao_sum=tao*8*Prf_N;    %发射16个脉冲总时间：16*51.2us
fs=40e6;                %采样率:40MHz
lmd=3e-2;               %信号波长:3cm
v=0;                  %目标移动速度:680m/s
R=20e3;                 %目标距离:20Km
c=3e8;                  %波速：
delay=3;                %时延：

t=-tao/2:1/fs:(tao/2-1/fs);                         %一个脉宽时间：256个采样点
t_extend=-tao_sum/2:1/fs:(tao_sum/2-1/fs);          %发射16个脉冲总时间:256*8*16=32768个采样点
%%  线性调频信号
y_cos=cos(2*pi*(f0*t+(B/2/tao*(t.^2))));  
y_sin=sin(2*pi*(f0*t+(B/2/tao*(t.^2))));            

%多普勒频移：fd=2*v/lmd
y_fd_cos=cos(2*v/lmd*t_extend);                     
y_fd_sin=sin(2*v/lmd*t_extend);

y_extend_cos=zeros(1,2048*Prf_N);                   
y_extend_sin=zeros(1,2048*Prf_N);

%存储16个脉冲回波
for i=1:Prf_N
  y_extend_cos((2048*(i-1)+899):(2048*(i-1)+1154))=y_cos;
  y_extend_sin((2048*(i-1)+899):(2048*(i-1)+1154))=y_sin;
end

%将多普勒频移调制到信号上
y_extend=y_extend_cos;       
%y_extend=y_extend_cos.*y_fd_cos-y_extend_sin.*y_fd_sin;       
y=[0,y_extend];

y=y/max(y);                         %归一化
y=y*(2^10-1);
y=floor(y);

p=y(1:1:2048);


figure(1);
subplot(1,2,1);
plot(y(899:1154));
title('线性调频回波信号');
%%  DDC：4倍抽取
for i=1:Prf_N
    Data((256*(i-1)+1):(256*(i-1)+256))=y((2048*(i-1)+899):(2048*(i-1)+1154));      
    y_extend((2048*(i-1)+1):(2048*(i-1)+898))=zeros(1,898);
    y_extend((2048*(i-1)+899):(2048*(i-1)+1154))= y((2048*(i-1)+899):(2048*(i-1)+1154));
    y_extend((2048*(i-1)+1155):(2048*(i-1)+2048))=zeros(1,894);
end 

Noise = 1 + 1.*randn(1,2048*Prf_N);             %噪声
Noise=Noise/max(abs(Noise));                    %归一化
Noise=Noise*(2^8-1);                            
% Signal=y_extend+Noise;
Signal=y_extend;
%64阶滤波器系数
Num=[-8.68484547699078e-05,0.00764322776685446,0.00264552269553685,-0.000252709324428118,-0.00366235055681346,-0.00491248428334433,-0.00241183360895937,0.00269027618366999,0.00679659924315067,0.00629420987240044,0.000540627929531372,-0.00694964790558483,-0.0104420136109256,-0.00622880799724448,0.00396774823591044,0.0131835862179172,0.0137325832027865,0.00324728825049873,-0.0122677011706603,-0.0214091128213302,-0.0152414947897353,0.00503269368397438,0.0265900817464624,0.0321659662504797,0.0123292316324821,-0.0250596030348563,-0.0555571523367034,-0.0504402137251612,0.00563528741889113,0.102311563892251,0.205037403617293,0.270981322282336,0.270981322282336,0.205037403617293,0.102311563892251,0.00563528741889113,-0.0504402137251612,-0.0555571523367034,-0.0250596030348563,0.0123292316324821,0.0321659662504797,0.0265900817464624,0.00503269368397438,-0.0152414947897353,-0.0214091128213302,-0.0122677011706603,0.00324728825049873,0.0137325832027865,0.0131835862179172,0.00396774823591044,-0.00622880799724448,-0.0104420136109256,-0.00694964790558483,0.000540627929531372,0.00629420987240044,0.00679659924315067,0.00269027618366999,-0.00241183360895937,-0.00491248428334433,-0.00366235055681346,-0.000252709324428118,0.00264552269553685,0.00764322776685446,-8.68484547699078e-05];

f=linspace(0,2,64);
subplot(1,2,2);
plot(f,abs(fft(Num)));
xlabel('归一化频率');
Num=Num/max(abs(Num));
Num=Num*(2^7-1);
Num=floor(Num);


local_oscillator_i=cos(t_extend*f1*2*pi);   %I路本振信号

local_oscillator_q=-sin(t_extend*f1*2*pi);   %Q路本振信号

y_i = Signal.*local_oscillator_i;

y_q = Signal.*local_oscillator_q;

y_i_out = conv(y_i,Num) ;

y_q_out = conv(y_q,Num) ;

Y_I = y_i_out(1:4:end);

Y_Q = y_q_out(1:4:end);
%4倍抽取，滤波器系数
%a0=Num(1,1:4:64);
%a1=Num(1,2:4:64);
%a2=Num(1,3:4:64);
%a3=Num(1,4:4:64);

%
%y0=Signal(1:4:end);
%y1=Signal(2:4:end);
%y2=Signal(3:4:end);
%y3=Signal(4:4:end);

%y0_result=conv(y0,a0);
%y1_result=conv(y1,a1);
%y2_result=conv(y2,a2);
%y3_result=conv(y3,a3);

%Len=length(y0_result);
%Y_I=y0_result-y2_result(1,1:Len);           %4倍抽取后I路信号
%Y_Q=y1_result(1,1:Len)-y3_result(1,1:Len);  %4倍抽取后Q路信号

figure(2)
plot(Y_I,'b');
hold on;
plot(Y_Q,'r');
title('抽取后I、Q两路信号');
legend('Location','NorthEast','I路信号','Q路信号');
%%  脉冲压缩
B=10e6;                                 %带宽
tao=6.4e-6;                             %脉宽
fs=10e6;                                %采样率
t=(-tao/2):1/fs:(tao/2-1/fs);

%匹配滤波I、Q两路系统响应
PC_coef_I=cos(2*pi*(B/2/tao*(t.^2)));   
PC_coef_Q=-sin(2*pi*(B/2/tao*(t.^2)));

%归一化
Max_value=max(abs([PC_coef_I,PC_coef_Q]));

PC_coef_I=PC_coef_I/Max_value;          
PC_coef_I=PC_coef_I*(2^7-1);            
PC_coef_I=floor(PC_coef_I);

PC_coef_Q=PC_coef_Q/Max_value;
PC_coef_Q=PC_coef_Q*(2^7-1);
PC_coef_Q=floor(PC_coef_Q);

%匹配滤波后信号输出I、Q两路
%PC_I_output=conv(PC_coef_I,Y_I)-conv(PC_coef_Q,Y_Q);
PC_I_output=conv(PC_coef_I,Y_Q);
%PC_Q_output=conv(PC_coef_Q,Y_I)+conv(PC_coef_I,Y_Q);
PC_Q_output=conv(PC_coef_Q,Y_I);
figure(3);
plot(PC_I_output);
title('脉冲压缩后I路输出');
figure(4);
plot(PC_Q_output);
title('脉冲压缩后Q路输出');
%%  Mti
%MTI实质二次对消
for i=1:512
   for k=1:(Prf_N-2)
      Mti_I_output(512*(k-1)+i)=PC_I_output(512*(k-1)+i)+PC_I_output(512*(k+1)+i)-2*PC_I_output(512*k+i);
      Mti_Q_output(512*(k-1)+i)=PC_Q_output(512*(k-1)+i)+PC_Q_output(512*(k+1)+i)-2*PC_Q_output(512*k+i);
   end
end

figure(5);
plot(Mti_I_output);
title('MTI：I路输出');
figure(6);
plot(Mti_Q_output);
title('MTI：Q路输出');
%% 相参积累
Coherent_Accumulation_I_output=zeros(1,512);
Coherent_Accumulation_Q_output=zeros(1,512);

for i=1:(Prf_N-2)
   Coherent_Accumulation_I_output=Mti_I_output((512*(i-1)+1):512*i)+Coherent_Accumulation_I_output; 
   Coherent_Accumulation_Q_output=Mti_Q_output((512*(i-1)+1):512*i)+Coherent_Accumulation_Q_output;
end
figure(8)
plot(Coherent_Accumulation_I_output);
title('相参积累I路输出');
figure(9)
plot(Coherent_Accumulation_Q_output);
title('相参积累Q路输出');
Coherent_Accumulation_Amplitude=Coherent_Accumulation_I_output.^2+Coherent_Accumulation_Q_output.^2;
figure(10)
plot(Coherent_Accumulation_Amplitude);
title('相参积累相参积累幅度');