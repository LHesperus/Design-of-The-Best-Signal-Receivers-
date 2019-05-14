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
R=5e3;
c=3e8;
delay=3;
t=-tao/2:1/fs:(tao/2-1/fs);
y=cos(2*pi*(f0*t+(B/2/tao*(t.^2)+2*v/lmd*t)));
y=y/max(y);
y=y*(2^9-1);
y=floor(y);

figure(1);
plot(fftshift(abs(fft(y))));

for i=1:16
    y_extend((2048*(i-1)+1):2048*i)=[zeros(1,896+delay*(i-1)),y,zeros(1,896-delay*(i-1))];
end 

Noise = 1 ;
Noise=Noise/max(abs(Noise));
Noise=Noise*(2^9-1);
Signal=y_extend+Noise;
% Filter_coefficient
Num=[-0.000556300299929547,0.00661482205783871,0.00296406069882808,0.000211049675378724,-0.00315085752436026,-0.00474748462548707,-0.00277233839477288,0.00203166401348764,0.00634189514450275,0.00643501775417007,0.00122468512359355,-0.00621150756925561,-0.0102396877377403,-0.00676408701913848,0.00305098551979668,0.0125805613641319,0.0139352472692112,0.00415870387487902,-0.0113219678021855,-0.0211635225898055,-0.0159200307498836,0.00390925537801340,0.0258717563556291,0.0324237455979039,0.0133989379531473,-0.0239754467027820,-0.0552860787083482,-0.0512054771235657,0.00439733294311577,0.101533564910218,0.205314085344670,0.272113421358276,0.272113421358276,0.205314085344670,0.101533564910218,0.00439733294311577,-0.0512054771235657,-0.0552860787083482,-0.0239754467027820,0.0133989379531473,0.0324237455979039,0.0258717563556291,0.00390925537801340,-0.0159200307498836,-0.0211635225898055,-0.0113219678021855,0.00415870387487902,0.0139352472692112,0.0125805613641319,0.00305098551979668,-0.00676408701913848,-0.0102396877377403,-0.00621150756925561,0.00122468512359355,0.00643501775417007,0.00634189514450275,0.00203166401348764,-0.00277233839477288,-0.00474748462548707,-0.00315085752436026,0.000211049675378724,0.00296406069882808,0.00661482205783871,-0.000556300299929547;];
Num=Num/max(abs(Num));
Num=Num*(2^7-1);
Num=floor(Num);
a0=Num(1,1:4:64);
a1=Num(1,2:4:64);
a2=Num(1,3:4:64);
a3=Num(1,4:4:64);


% DDC
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
figure(7)
Mti_output_Amplitude=Mti_I_output.^2+Mti_Q_output.^2;
plot(Mti_output_Amplitude);

% Coherent_Accumulation
Coherent_Accumulation_I_output=zeros(1,512);
Coherent_Accumulation_Q_output=zeros(1,512);
for i=1:14
   Coherent_Accumulation_I_output=Mti_I_output((512*(i-1)+1):512*i)+Coherent_Accumulation_I_output; 
   Coherent_Accumulation_Q_output=Mti_Q_output((512*(i-1)+1):512*i)+Coherent_Accumulation_Q_output;
end
figure(8)
plot(Coherent_Accumulation_I_output);
figure(9)
plot(Coherent_Accumulation_Q_output);
Coherent_Accumulation_Amplitude=Coherent_Accumulation_I_output.^2+Coherent_Accumulation_Q_output.^2;
figure(10)
plot(Coherent_Accumulation_Amplitude);