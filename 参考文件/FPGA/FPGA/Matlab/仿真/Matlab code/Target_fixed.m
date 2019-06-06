clc,close all;
% Lfm
N=256;
n=0:255;
f0=120e6;
B=40e6;
tao=1.6e-6;
fs=160e6;
lmd=2e-2;
v=0;
t=-tao/2:1/fs:(tao/2-1/fs);
y=cos(2*pi*(f0*t+(B/2/tao*(t.^2)+2*v/lmd*t)));
y=y/max(y);
y=y*(2^9-1);
y=floor(y);

figure(1);
plot(fftshift(abs(fft(y))));

y_extend=zeros(1,2048);
y_extend=[zeros(1,896),y,zeros(1,896)];
for i=1:16
    y_extend((2048*(i-1)+1):2048*i)=y_extend(1:2048);
end 

% Filter_coefficient
Num=Num/max(abs(Num));
Num=Num*(2^7-1);
Num=floor(Num);
a0=Num(1,1:4:64);
a1=Num(1,2:4:64);
a2=Num(1,3:4:64);
a3=Num(1,4:4:64);


% DDC
y0=y_extend(4:4:end);
y1=y_extend(3:4:end);
y2=y_extend(2:4:end);
y3=y_extend(1:4:end);

y0_result=conv(y0,a0);
y1_result=conv(y1,a1);
y2_result=conv(y2,a2);
y3_result=conv(y3,a3);

Len=length(y0_result);
Y_I=y0_result-y2_result(1,1:Len);
Y_Q=y3_result(1,1:Len)-y1_result(1,1:Len);



figure(2)
plot(Y_I);
hold on;
plot(Y_Q,'r');


B=40e6;
tao=1.6e-6;
fs=40e6;
t=(-tao/2):1/fs:(tao/2-1/fs);
PC_coef_I=cos(2*pi*(B/2/tao*(t.^2)));
PC_coef_Q=-sin(2*pi*(B/2/tao*(t.^2)));

% figure(3)
% plot(PC_coef_I);
% hold on;
% plot(PC_coef_Q,'r');

% PC_coef_I=fliplr(PC_coef_I);
% PC_coef_Q=fliplr(PC_coef_Q);
PC_coef_I=PC_coef_I/max(abs([PC_coef_I]));
PC_coef_I=PC_coef_I*(2^7-1);
PC_coef_I=floor(PC_coef_I);
PC_coef_Q=PC_coef_Q/max(abs([PC_coef_Q]));
PC_coef_Q=PC_coef_Q*(2^7-1);
PC_coef_Q=floor(PC_coef_Q);

PC_I_output=conv(PC_coef_I,Y_I)-conv(PC_coef_Q,Y_Q);
PC_Q_output=conv(PC_coef_Q,Y_I)+conv(PC_coef_I,Y_Q);

figure(3);
plot(PC_I_output);
figure(4);
plot(PC_Q_output);

% Mti
% Mti_I_output=
for i=1:512
   for k=1:14
      Mti_I_output(512*(k-1)+i)=PC_I_output(512*(k-1)+i)+PC_I_output(512*k+i)-2*PC_I_output(512*(k+1)+i);
      Mti_Q_output(512*(k-1)+i)=PC_Q_output(512*(k-1)+i)+PC_Q_output(512*k+i)-2*PC_Q_output(512*(k+1)+i);
   end
end
figure(5);
plot(Mti_I_output);
figure(6);
plot(Mti_Q_output);