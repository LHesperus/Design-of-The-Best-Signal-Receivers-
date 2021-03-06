clc,close all;
clear;

%% Paraments
Prf_N=16;%脉冲个数
f0=30e6;%中频
B=10e6;%带宽
D=4;%抽取倍数
tao=6.4e-6;%脉冲宽度
tao_sum=tao*8*Prf_N;%脉冲重复周期为tao*8
fs=40e6;%中频信号采样率
lmd=3e-2;%波长
v=18.3;%目标速度
c=3e8;%光速
t=-tao/2:1/fs:(tao/2-1/fs);%单个PRI仿真时间
t_extend=-tao_sum/2:1/fs:(tao_sum/2-1/fs);%Prf_N个脉冲仿真时间
snr=0;%信噪比

%% LFM
y_cos=cos(2*pi*(f0*t+(B/2/tao*(t.^2))));
y_sin=sin(2*pi*(f0*t+(B/2/tao*(t.^2))));
figure
subplot(2,1,1);
plot(t,y_cos)
xlabel('s')
title('Time domain y\_cos')
grid on;
subplot(2,1,2)
plot(t,y_sin)
title('y\_sin');
xlabel('s')
grid on;

f=-fs/2:fs/length(t):(fs/2-fs/length(t));
figure
subplot(2,1,1)
plot(f,fftshift(abs(fft(y_cos))))
title('Freq domain y\_cos');
xlabel('Hz')
grid on;
subplot(2,1,2)
plot(f,fftshift(abs(fft(y_sin))))
title('Freq domain y\_sin');
xlabel('Hz')
grid on;

%% Doppler
y_fd_cos=cos(2*pi*v/lmd*t_extend);
y_fd_sin=sin(2*pi*v/lmd*t_extend);

y_extend_cos=zeros(1,2048*Prf_N);
y_extend_sin=zeros(1,2048*Prf_N);

for i=1:Prf_N
  y_extend_cos((2048*(i-1)+899):(2048*(i-1)+1154))=y_cos;
  y_extend_sin((2048*(i-1)+899):(2048*(i-1)+1154))=y_sin;
end
y_extend=y_extend_cos.*y_fd_cos-y_extend_sin.*y_fd_sin;
y=[0,y_extend];

y=y/max(y);
y=y*(2^10-1);
y=floor(y);

%% Extend to 10 Pulses
for i=1:Prf_N
    Data((256*(i-1)+1):(256*(i-1)+256))=y((2048*(i-1)+899):(2048*(i-1)+1154));
    y_extend((2048*(i-1)+1):(2048*(i-1)+898))=zeros(1,898);
    y_extend((2048*(i-1)+899):(2048*(i-1)+1154))= y((2048*(i-1)+899):(2048*(i-1)+1154));
    y_extend((2048*(i-1)+1155):(2048*(i-1)+2048))=zeros(1,894);
end 

%% Add Noise
Noise = 1 + 1.*randn(1,2048*Prf_N);
Noise=Noise/max(abs(Noise));
Noise=Noise*(2^8-1);

Signal=awgn(y_extend,snr);

%% DDC
Coefficient=DDC_Filter.Numerator;
Coefficient=Coefficient/max(abs(Coefficient));
Coefficient=Coefficient*(2^7-1);
Coefficient=floor(Coefficient);
a0=Coefficient(1,1:4:64);
a1=Coefficient(1,2:4:64);
a2=Coefficient(1,3:4:64);
a3=Coefficient(1,4:4:64);

y0=Signal(4:4:end);
y1=Signal(3:4:end);
y2=Signal(2:4:end);
y3=Signal(1:4:end);

y0_result=conv(y0,a0);
y1_result=conv(y1,a1);
y2_result=conv(y2,a2);
y3_result=conv(y3,a3);

Len=length(y0_result);
Y_I=y0_result-y2_result(1,1:Len);
Y_Q=y3_result(1,1:Len)-y1_result(1,1:Len);

figure
subplot(3,1,1)
plot(Y_I);
title('DDC Y\_I');
grid on;
subplot(3,1,2)
plot(Y_Q,'r');
title('DDC Y\_Q');
grid on;

DDC_Output_Amplitude=Y_I.^2+Y_Q.^2;
figure
plot(20*log10(DDC_Output_Amplitude));
title('DDC\_Output\_Amplitude');
ylabel('dB');
grid on;
%% PC
B=10e6;
tao=6.4e-6;
fs=10e6;
t=(-tao/2):1/fs:(tao/2-1/fs);
PC_coef_I=cos(2*pi*(B/2/tao*(t.^2)));
PC_coef_Q=-sin(2*pi*(B/2/tao*(t.^2)));

Max_value=max(abs([PC_coef_I,PC_coef_Q]));
PC_coef_I=PC_coef_I/Max_value;
PC_coef_I=PC_coef_I*(2^7-1);
PC_coef_I=floor(PC_coef_I);
PC_coef_Q=PC_coef_Q/Max_value;
PC_coef_Q=PC_coef_Q*(2^7-1);
PC_coef_Q=floor(PC_coef_Q);

PC_I_output=conv(PC_coef_I,Y_I)-conv(PC_coef_Q,Y_Q);
PC_Q_output=conv(PC_coef_Q,Y_I)+conv(PC_coef_I,Y_Q);

figure
subplot(4,1,1)
plot(PC_I_output);
title('PC\_I\_output');
grid on;
subplot(4,1,2)
plot(PC_Q_output);
title('PC\_Q\_output');
grid on;

PC_Output_Amplitude=PC_I_output.^2+PC_Q_output.^2;
figure
plot(20*log10(PC_Output_Amplitude));
title('PC\_Output\_Amplitude');
ylabel('dB');
grid on;
%% MTI
for i=1:512
   for k=1:(Prf_N-2)
      Mti_I_output(512*(k-1)+i)=PC_I_output(512*(k-1)+i)+PC_I_output(512*(k+1)+i)-2*PC_I_output(512*k+i);
      Mti_Q_output(512*(k-1)+i)=PC_Q_output(512*(k-1)+i)+PC_Q_output(512*(k+1)+i)-2*PC_Q_output(512*k+i);
   end
end
figure
subplot(5,1,1)
plot(Mti_I_output);
title('Mti\_I\_output');
grid on;
subplot(5,1,2)
plot(Mti_Q_output);
title('Mti\_Q\_output');
grid on;

Mti_output_Amplitude=Mti_I_output.^2+Mti_Q_output.^2;
figure
plot(20*log10(Mti_output_Amplitude));
title('Mti\_Output\_Amplitude');
ylabel('dB');
grid on;

%% Coherent_Accumulation
Coherent_Accumulation_I_output=zeros(1,512);
Coherent_Accumulation_Q_output=zeros(1,512);
for i=1:(Prf_N-2)
   Coherent_Accumulation_I_output=Mti_I_output((512*(i-1)+1):512*i)+Coherent_Accumulation_I_output; 
   Coherent_Accumulation_Q_output=Mti_Q_output((512*(i-1)+1):512*i)+Coherent_Accumulation_Q_output;
end

figure
subplot(6,1,1)
plot(Coherent_Accumulation_I_output);
title('Coherent\_Accumulation\_I\_output');
grid on;
subplot(6,1,2)
plot(Coherent_Accumulation_Q_output);
title('Coherent\_Accumulation\_Q\_output');
grid on;

Coherent_Accumulation_Amplitude=Coherent_Accumulation_I_output.^2+Coherent_Accumulation_Q_output.^2;
figure
plot(20*log10(Coherent_Accumulation_Amplitude));
title('Coherent\_Accumulation\_Amplitude');
ylabel('dB');
grid on;

%% CA-CFAR
echo=Coherent_Accumulation_Amplitude;
azi_num=length(echo);
n=16;%共32个参考单元，前后各有16个滑窗
const_false_alarm_pdf=0.5e-6;
T_ca=const_false_alarm_pdf^(-1/(2*n))-1%针对此时pf和n的CA-CFAR的门限系数
ca_power=zeros(1,azi_num);%初始化
for i=1:azi_num
  ca_power(1,1)=sum(echo(1,3:n+2));
  ca_power(1,2)=sum(echo(1,4:n+3));
  
  for i=3:n+1
     ca_power(1,i)=(sum(echo(1,1:i-2))+sum(echo(1,i+2:i+n+1)))/2;    
  end
  
  for i=n+2:azi_num-n-1
     ca_power(1,i)=(sum(echo(1,i-n-1:i-2))+sum(echo(1,i+2:i+n+1)))/2;
  end
  
  for i=azi_num-n:azi_num-2
     ca_power(1,i)=(sum(echo(1,i-n-1:i-2))+sum(echo(1,i+2:azi_num)))/2;
  end
  
  ca_power(1,azi_num-1)=sum(echo(1,azi_num-n-2:azi_num-3));
  ca_power(1,azi_num)=sum(echo(1,azi_num-n-1:azi_num-2));
end
ca_threshold=T_ca*ca_power;

figure(7)
plot(10*log10(abs(echo)));
hold on
title('CFAR')
plot(10*log10(abs(ca_threshold)),'r');
ylabel('dB');
grid on;

