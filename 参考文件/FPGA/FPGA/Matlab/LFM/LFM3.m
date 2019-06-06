%%demo of chirp signal
T=10e-6;                          %pulse duration10us
B=30e6;                           %chirp frequency modulation bandwidth 30MHz
K=B/T;                            %chirp slope
Fs=2*B;Ts=1/Fs;                   %sampling frequency and sample spacing
N=T/Ts;
t=linspace(-T/2,T/2,N);
St=exp(j*pi*K*t.^2);                 %generate chirp signal
subplot(211)
plot(t*1e6,real(St));
xlabel('Time in u sec');
title('Real part of chirp signal');
grid on;axis tight;
subplot(212)
freq=linspace(-Fs/2,Fs/2,N);
plot(freq*1e-6,fftshift(abs(fft(St))));
xlabel('Frequency in MHz');
title('Magnitude spectrum of chirp signal');
grid on;axis tight;
