clc
close all
clear all
%% Parameter
Prf_N=16;
f0=30e6;
B=10e6;
tao=6.4e-6;
Prf=51.2e-6;
fs=40e6;
D=4;
lmd=3e-2;
v=680;
R=20e3;

j=sqrt(-1);
fc=30e6;
B=10e6;
fs=40e6;
T=6.4e-6;
[s,t]=genLFM(fs,fc,B,T);
len=length(s);
figure
plot(t,real(s));title('LFM [-T/2 T/2]');
figure
f=fs*(-len/2+1:len/2)/len;
plot(f,abs(fftshift(fft(real(s)))));title('spectrum of real LFM')
I_rec=real(s);
Q_rec=imag(s);

%% extend
len_ex=round(Prf*fs);
I_rec_extend=zeros(1,len_ex);
Q_rec_extend=zeros(1,len_ex);
I_rec_extend(round(len_ex/2-len/2):round(len_ex/2+len/2)-1)=I_rec;
Q_rec_extend(round(len_ex/2-len/2):round(len_ex/2+len/2)-1)=Q_rec;
I_rec_extend=repmat(I_rec_extend,1,Prf_N);
Q_rec_extend=repmat(Q_rec_extend,1,Prf_N);
I_rec=I_rec_extend;
Q_rec=Q_rec_extend;
figure
subplot(2,1,1)
plot(I_rec_extend);title('I-LFM with 16 period')
subplot(2,1,2)
plot(Q_rec_extend);title('Q-LFM with 16 period')
%% 


%% lowpass filter
Hd = lowpass63;
h=Hd.Numerator;
hA=h(1:4:end);
hB=h(3:4:end);
hC=h(2:4:end);
hD=h(4:4:end);
freqz(Hd)

%% no-High efficiency DDC test
len_NCO=length(I_rec_extend);
NCO_I=cos(2*pi*fc/fs*(0:len_NCO-1)); 
NCO_Q=sin(2*pi*fc/fs*(0:len_NCO-1));
I_no_effi=NCO_I.*I_rec;
Q_no_effi=NCO_Q.*Q_rec;
IQ_no_effi=I_no_effi+Q_no_effi*j;
IQ_no_effi=filter(Hd,IQ_no_effi);
figure
suptitle('no-High efficiency DDC,filter out')
subplot(2,1,1)
plot(real(IQ_no_effi));
subplot(2,1,2)
plot(imag(IQ_no_effi))

figure

plot(abs(fftshift(fft(IQ_no_effi))))
%
IQ_no_effi=IQ_no_effi(1:4:end);
figure
suptitle('no-High efficiency DDC,Down sampling out')
subplot(2,1,1)
plot(real(IQ_no_effi))
subplot(2,1,2)
plot(imag(IQ_no_effi))
figure
plot(abs(fftshift(fft(IQ_no_effi))))

%% High efficiency DDC
I_4rec(1,:)=I_rec(1:4:end);%A
I_4rec(2,:)=I_rec(2:4:end);
I_4rec(3,:)=-I_rec(3:4:end);%B
I_4rec(4,:)=I_rec(4:4:end);
Q_4rec(1,:)=Q_rec(1:4:end);
Q_4rec(2,:)=-Q_rec(2:4:end);%C
Q_4rec(3,:)=Q_rec(3:4:end);
Q_4rec(4,:)=Q_rec(4:4:end);%D

%% conv 
I_D=[conv(I_4rec(1,:),hA) 0 0]+[0 0 conv(I_4rec(3,:),hB)];
Q_D=[conv(Q_4rec(2,:),hC) 0 0]+[0 0 conv(Q_4rec(4,:),hD)];
figure
subplot(2,1,1)
plot(I_D)
subplot(2,1,2)
plot(Q_D)
figure
plot(abs(fftshift(fft(I_rec+Q_rec*j))))
figure
plot(abs(fftshift(fft(I_D))))