x=randint(15,1) 
Fc=7000; %fft要符合奈奎斯特低通采样定理
Fd=128; 
Fs=65536; 
[y,T]= dmod(x,Fc,Fd,Fs,'ASK',4); %dmod数字通带调制,amod模拟调制,ask幅度键控调制[y,t]=amod(x,Fc,Fs,'amdsb-tc');%
len=length(y); %y=7680
 
%%pause   % Press any key to see plot  after sampling 
subplot(2,1,1); 
plot(y)  
xlabel('points'); 
title('sampling time domain signal'); 
subplot(2,1,2); 
fft_y=fft(y,4069); %?

am_y1=abs(fft_y);  
f = Fs*(0:2048)/4096; %?
plot(f,am_y1(1:2049)) 
title('sampling frequency domain signal'); 
xlabel('Frequency'); 
figure(7);
plot(abs(fft_y))
 
len=length(y); 
std_val=0.2; 
n=std_val*randn(len,1); 
y=y+n; 
z=y; 
 
%%pause %see plot after adding nosie
figure(2);
subplot(2,1,1); 
plot(z) 
xlabel('points'); 
title('adding noise time domain signal'); 
subplot(2,1,2); 
fft_z=fft(z,4096); 
am_z=abs(fft_z); 
f = Fs*(0:2048)/4096; 
plot(f,am_z(1:2049)) 
title('adding noise frequency domain signal'); 
xlabel('Frequency'); 
 
int_z=zeros(len,1); 
for i=1:len 
    int_z(i)=int16(y(i)*32768); %没有添加噪声直接变换
end;  
figure(8);
plot(int_z) 
nco_freq=Fc-Fs; 
ad_freq=Fs; 
len=length(y); 
nco=zeros(len,1); 
nco_out=zeros(len,1); 
for i=1:len 
    nco(i)=cos(nco_freq*2*pi*i/ad_freq); %软件无线电书本p75-p76页
    nco_out(i)=nco(i)*int_z(i); 
end; 
 
%%pause %see plot after mixing 
figure(3);
subplot(2,1,1); 
plot(nco_out) 
xlabel('points'); 
title('mixing time domain signal'); 
subplot(2,1,2); 
fft_nco=fft(nco_out,4096); 
am_nco=abs(fft_nco); 
f = Fs*(0:2048)/4096; 
plot(f,am_nco(1:2049)) 
title('mixing frequency domain signal'); 
xlabel('Frequency'); %ok
 
m1=16; 
D1=4; 
cic_mid1=zeros(len,1); %len=7680
cic_out1=zeros(len/D1,1); 
cic_mid2=zeros(len/D1*D1,1); 
cic_mid3=zeros(len/D1*D1*D1,1); 
cic_mid4=zeros(len/D1*D1*D1*D1,1); 
cic_mid5=zeros(len/D1*D1*D1*D1*D1,1); 
 
for i=m1:len 
    for j=1:m1 
        cic_mid1(i)=cic_mid1(i)+nco_out(i-j+1); 
        cic_mid2(i)=cic_mid2(i)+cic_mid1(i-j+1); 
        cic_mid3(i)=cic_mid3(i)+cic_mid2(i-j+1); 
        cic_mid4(i)=cic_mid4(i)+cic_mid3(i-j+1); 
        cic_mid5(i)=cic_mid5(i)+cic_mid4(i-j+1); 
         
         
    end;     
end; 
%for i=m1:len/D1 
  % for j=1:m1 
    % cic_mid2(i)=cic_mid2(i)+cic_mid1(i-j+1); 
   %end;     
%end; 
%subplot(312); 
%figure(9)
%plot(cic_mid) %?有问题
for i=1:len/D1 
    cic_out1(i)=cic_mid5(i*D1-D1/2);   
end; 
 
%%pause %see plot after CIC
figure(4);
subplot(2,1,1); 
plot(cic_out1) 
xlabel('points'); 
title('CIC time domain signal'); 
subplot(2,1,2); 
fft_cic1=fft(cic_out1,4096); 
am_cic1=abs(fft_cic1); 
f = (Fs/D1)*(0:2048)/4096; 
plot(f,am_cic1(1:2049)) 
title('CIC frequency domain signal'); 
xlabel('Frequency'); 
 
 
 
 
 
%subplot(313); 
%plot(cic_out) 
hb0=[-0.031303406,0.00000,0.281280518,0.499954224,0.281280518,0.00000,0.281280518]; 
hb1=[0.005929947,0.000000,-0.049036026,0.0000000,0.29309082,0.499969482,0.29309082,0.0000000,-0.049036026,0.000000,0.005929947]; 
hb2=[-0.0130558,0.0000000,0.012379646,0.0000000,-0.06055069,0.0000000,0.299453735,0.499954224,0.299453735,0.0000000,-0.06055069,0.0000000,0.012379646,0.0000000,-0.0130558]; 
before_half=conv(hb0,cic_out1); 
half_out=zeros(length(before_half)/2,1); 
for i=1:length(before_half)/2 
    half_out(i)=before_half(2*i-1); 
end; 
 
%%pause %see plot after  HB 
figure(9);
subplot(2,1,1); 
plot(half_out) 
xlabel('points'); 
title('HB time domain signal'); 
subplot(2,1,2); 
fft_half=fft(half_out,4096); 
am_half=abs(fft_half); 
f = Fs/(2*D1)*(0:2048)/4096; 
plot(f,am_half(1:2049)) 
title('HB frequency domain signal'); 
xlabel('Frequency'); 
 
 
D2=2; 
Wn=0.75; 
coef=fir1(256,Wn); 
fvtool(coef,1); 
before_filter=conv(half_out,coef); 
len=length(half_out/D2) 
fir_out=zeros(floor(len/D2),1); 
for i=1:len/D2 
     
   fir_out(i)=before_filter(floor(256/2+0.5)+i*D2-floor(D2/2)); 
end; 
 
 
%%pause %see plot after FIR 
figure(10);
subplot(2,1,1); 
%x1=0:1:15; 
plot(fir_out) 
xlabel('points'); 
title('FIR time domain signal'); 
subplot(2,1,2); 
fft_fir=fft(fir_out,4096); 
am_fir=abs(fft_fir); 
f = Fs/(2*D2*D1)*(0:2048)/4096; 
plot(f,am_fir(1:2049)) 
title('FIR frequency domain signal'); 
xlabel('Frequency'); 
