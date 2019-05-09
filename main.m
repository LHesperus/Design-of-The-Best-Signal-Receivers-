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

fc=30e6;
B=10e6;
fs=40e6;
T=6.4e-6;
[s,t]=genLFM(fs,fc,B,T);
len=length(s);
figure
plot(t,real(s))
figure
f=fs*(-len/2+1:len/2)/len;
plot(f,abs(fftshift(fft(real(s)))))

%% 
NCO_I=cos(2*pi*fc/fs*(0:len-1)); 
NCO_Q=sin(2*pi*fc/fs*(0:len-1));
aaa=NCO_Q.*real(s);
%plot(NCO_Q.*real(s))
%plot(abs(fftshift(fft(aaa))))