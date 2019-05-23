clc
close all
clear all
%% Parameter
D=4;
lambda=3e-2;
v=680;
R=20e3;
c=3e8;
j=sqrt(-1);
Prf_N=16;
Prf=51.2e-6;
fc=30e6;
%fc=0;
B=10e6;
fs=40e6;
T=6.4e-6;
[s,t]=genLFM(fs,fc,B,T);
len=length(s);
figure
subplot(2,1,1)
plot(t,real(s));
subplot(2,1,2)
plot(t,imag(s));
title('LFM [-T/2 T/2]');
figure
f=fs*(-len/2:len/2-1)/len;
plot(f,abs(fftshift(fft(real(s)))));title('spectrum of real LFM')
I_rec=real(s);
Q_rec=imag(s);

%% extend
len_ex=round(Prf*fs);
I_rec_extend=zeros(1,len_ex);
Q_rec_extend=zeros(1,len_ex);
%I_rec_extend(round(len_ex/2-len/2):round(len_ex/2+len/2)-1)=I_rec;
%Q_rec_extend(round(len_ex/2-len/2):round(len_ex/2+len/2)-1)=Q_rec;
I_rec_extend(1:len)=I_rec;
Q_rec_extend(1:len)=Q_rec;
I_rec_extend=repmat(I_rec_extend,1,Prf_N);
Q_rec_extend=repmat(Q_rec_extend,1,Prf_N);
I_rec=I_rec_extend;
Q_rec=Q_rec_extend;
len_ex=length(I_rec);
t=(0:len_ex-1)*fs;
f=(-len_ex/2:len_ex/2-1)*(fs/len_ex);
figure
subplot(2,1,1)
plot(t,I_rec_extend);title('I-LFM with 16 period')
subplot(2,1,2)
plot(t,Q_rec_extend);title('Q-LFM with 16 period')




%% Gauss Channel
SNR=30;
IQ_rec=awgn(I_rec+Q_rec*j,SNR,'measured');
I_rec=real(IQ_rec);
Q_rec=imag(IQ_rec);

%% Doppler
f_d=2*v/lambda; %Doppler freq
IQ_rec=IQ_rec.*exp(j*2*pi*f_d*t);
I_rec=real(IQ_rec);
Q_rec=imag(IQ_rec);

figure
plot(abs(IQ_rec))
%% ECHO
R=0;   %this code need t_echo<Prf
t_echo=round(2*R/c*fs);
IQ_rec=[zeros(1,t_echo),IQ_rec(1:end-t_echo)];
I_rec=real(IQ_rec);
Q_rec=imag(IQ_rec);


figure
subplot(2,1,1)
plot(I_rec)
subplot(2,1,2)
plot(Q_rec)
title('echo')
figure
plot(abs(IQ_rec))
%% lowpass filter
Hd = lowpass63;
h=Hd.Numerator;
hA=h(1:4:end);
hB=h(3:4:end);
hC=h(2:4:end);
hD=h(4:4:end);
freqz(Hd)

%% no-High efficiency DDC test
len_NCO=length(I_rec);
NCO_I=cos(2*pi*fc/fs*(0:len_NCO-1)); 
NCO_Q=-sin(2*pi*fc/fs*(0:len_NCO-1));
I_no_effi=NCO_I.*I_rec;
Q_no_effi=NCO_Q.*I_rec;
IQ_no_effi=I_no_effi+Q_no_effi*j;
IQ_no_effi=filter(Hd,IQ_no_effi);
figure
suptitle('no-High efficiency DDC,filter out')
subplot(2,1,1)
plot(t,real(IQ_no_effi));
subplot(2,1,2)
plot(t,imag(IQ_no_effi))

figure
plot(f,abs(fftshift(fft(IQ_no_effi))));
title('no-High efficiency DDC,Spectrum');

% Down sample
IQ_no_effi=IQ_no_effi(1:D:end);
t_D=t(1:D:end)/D;
f_D=f(1:D:end)/D;
figure
suptitle('no-High efficiency DDC,Down sampling out')
subplot(2,1,1)
plot(t_D,real(IQ_no_effi))
subplot(2,1,2)
plot(t_D,imag(IQ_no_effi))
figure
plot(f_D,abs(fftshift(fft(IQ_no_effi))))
title('no-High efficiency DDC,Down sampling Spectrum')

%% High efficiency DDC
I_4rec(1,:)=I_rec(1:4:end);%A
I_4rec(2,:)=-I_rec(2:4:end);%C
I_4rec(3,:)=-I_rec(3:4:end);%B
I_4rec(4,:)=I_rec(4:4:end);%D

%% nco-lowpass-down sample-conv 
I_D=[conv(I_4rec(1,:),hA) 0 0 0]+[0 0 conv(I_4rec(3,:),hB) 0];
Q_D=[0 conv(I_4rec(2,:),hC) 0 0]+[0 0 0 conv(I_4rec(4,:),hD)];

% I_D=[conv(I_4rec(1,:),hA) ]+[conv(I_4rec(3,:),hB)];
% Q_D=[conv(I_4rec(2,:),hC) ]+[ conv(I_4rec(4,:),hD)];
len_D=length(I_D);
t_D=(0:len_D-1)*fs/D;
f_D=(-len_D/2:len_D/2-1)*(fs/D/len_D);
figure
subplot(2,1,1)
plot(t_D,I_D);title('I baseband')
subplot(2,1,2)
plot(t_D,Q_D);title('Q baseband')
figure
plot(f,abs(fftshift(fft(I_rec))));title('LFM IF Spectrum')
figure
plot(f_D,abs(fftshift(fft(I_D+Q_D*j))));title('LFM baseband Spectrum')



%% pulse compression(PC)
[h,t_h]=genLFM(fs/D,0,B,T);
h=conj(h);    
PC_I_output=conv(real(h),I_D)-conv(imag(h),Q_D);
PC_Q_output=conv(imag(h),I_D)+conv(real(h),Q_D);

figure
subplot(3,1,1)
plot(PC_I_output);title(' I LFM after pulse compression')
subplot(3,1,2)
plot(PC_Q_output);title(' Q LFM after pulse compression')
subplot(3,1,3)
PC_IQ=PC_I_output+PC_Q_output*j;
plot(abs(PC_IQ));title(' Ampltitude of  LFM after pulse compression')



%% MTI
mti_len=round(Prf*fs/D);
PC_matrix=zeros(Prf_N,mti_len);
for ii=1: Prf_N
   PC_matrix(ii,:)=PC_IQ((ii-1)*mti_len+1:ii*mti_len);
end

figure
plot(abs(sum(PC_matrix)));title('PC_sum');

MTI=zeros(Prf_N-2,mti_len);

for ii=1:Prf_N-2
   MTI(ii,:)=PC_matrix(ii+2,:)-2*PC_matrix(ii+1,:)+PC_matrix(ii,:);
   MTI_OUT((ii-1)*mti_len+1:ii*mti_len)=PC_matrix(ii+2,:)-2*PC_matrix(ii+1,:)+PC_matrix(ii,:);

end
figure
plot(abs(MTI_OUT(1,:)));title('MTI_OUT')
figure
subplot(2,1,1)
plot(real(MTI_OUT))
subplot(2,1,2)
plot(imag(MTI_OUT))
suptitle('MTI IQ OUT')

%% Coherent accumulation (if f_d=0,then MTI_AC withou peak)  To suppress fixed targets
 MTI_AC=0;
for ii=1:Prf_N-2
    MTI_AC=MTI_AC+MTI(ii,:);
end
figure
subplot(3,1,1)
plot(abs(MTI_AC));title('pulse accumulation')

%% CA-CFAR
% CA-CFAR
alpha=0.5;beta=0.5;
%GOCA-CFAR
%alpha=1;beta=0;
%SOCA-CFAR
%alpha=0;beta=1;
protect_len=3;                           %length of protect unit   
ref_len=8;                               %length of refenerce unit
MTD=abs(MTI_AC);
MTD_len=length(MTD);
CAFR=zeros(1,MTD_len);

%  input data stream [ref protect data protect ref],out CAFR
for ii=1:protect_len+1
    CAFR(ii)=(alpha+beta)*mean(MTD(ii+protect_len+1:ii+1+protect_len+ref_len));
end

for ii=protect_len+2:protect_len+ref_len
    X=mean(MTD(1:ii-protect_len-1));
    Y=mean(MTD(ii+ref_len+1:ii+ref_len+protect_len+1));
    CAFR(ii)=alpha*max(X,Y)+beta*min(X,Y);
end

for ii=protect_len+ref_len+1:MTD_len-protect_len-ref_len-1
    X=mean(MTD(ii-protect_len-ref_len:ii-protect_len-1));
    Y=mean(MTD(ii+ref_len+1:ii+ref_len+protect_len+1));
    CAFR(ii)=alpha*max(X,Y)+beta*min(X,Y);
end

for ii=MTD_len-protect_len-ref_len:MTD_len-protect_len
    X=mean(MTD(ii-protect_len-ref_len:ii-protect_len-1));
    Y=mean(MTD(ii+ref_len+1:end));
    CAFR(ii)=alpha*max(X,Y)+beta*min(X,Y);
end
for ii=MTD_len-protect_len+1:MTD_len
    CAFR(ii)=(alpha+beta)*mean(MTD(ii-protect_len-ref_len:ii-protect_len-1));
end

subplot(3,1,2)
plot(CAFR);title('CA-CAFR threshold,protect_len=3 ,ref_len=8,alpha=0.5,beta=0.5,');
subplot(3,1,3)
plot(MTD-3*CAFR);title('Judgment result')