clear all;
G=1.0e10;
us=1.0e-6;
M=1.0e6;
T=20*us;
f0=1.0*G;%10G
fs=80*M;
B=50*M;
K=B/T;
N=0:1:1599; 
s=cos(2*pi*f0*N/fs+pi*K*(N/fs));
f1=10*G-100*M;
s1=cos(2*pi*f1*N/fs);
s1=s.*s1;



