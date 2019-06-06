%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%info%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %author: Yang Li
 %email: yangli0534@gmail.com
  %data:2013/12/16
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%IF signal generation%%%%%%%%%%%%%%%%%%%%%%%%% 
  b=2e6;
 taup=50/1e6;
 fc=20e6;
   
 n = fix(50 * taup * b);
 t = linspace(-taup/2,taup/2,n);
  s= exp(i * pi * (b/taup) .* t.^2 + i * 2 * pi * fc .* t);
  figure(1)
  subplot(4,1,1)
  plot(t,real(s),'k')
  ylabel('real part of IF signal s')
  xlabel('time in seconds')
  grid
  subplot(4,1,2)
  sampling_interval = 1 / 5 /fc;
  freqlimit = 0.5/ sampling_interval;
 freq = linspace(-freqlimit,freqlimit,n);
  plot(freq,fftshift(abs(fft(real(s)))),'k');
  ylabel('Spectrum of real part of s')
  xlabel('Frequency in Hz')
  
  grid
  subplot(4,1,3)
 plot(t,imag(s),'k')
  ylabel('imag part of IF signal s')
  xlabel('time in seconds')
 grid
  
  subplot(4,1,4)

  plot(freq,fftshift(abs(fft(imag(s)))),'k');
  ylabel('Spectrum of imag part of s')
  xlabel('Frequency in Hz')
  grid
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%mixer%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 lo =   exp(i*2 * pi * fc .* t);
  smi = real(s) .* real(lo);
  figure(2)
 subplot(4,1,1)
 plot(t, smi,'k')
  ylabel('real part of   signal sm after mixed')
 xlabel('time in seconds')
  grid
 subplot(4,1,2)
   sampling_interval = 1 / 5 /fc;
   freqlimit = 0.5/ sampling_interval;
   freq = linspace(-freqlimit,freqlimit,n);
    plot(freq,fftshift(abs(fft( smi ))),'k');
  ylabel('Spectrum of smi')
  xlabel('Frequency in Hz')
  grid
 
   smq = real(s) .* imag(lo);

   subplot(4,1,3)
 plot(t, smq,'k')
 ylabel('imap part of   signal sm after mixed')
  xlabel('time in seconds')
 grid
 subplot(4,1,4)
  sampling_interval = 1 / 5 /fc;
   freqlimit = 0.5/ sampling_interval;
   freq = linspace(-freqlimit,freqlimit,n);
   plot(freq,fftshift(abs(fft( smq ))),'k');
    ylabel('Spectrum of smq')
   xlabel('Frequency in Hz')
  grid
   
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%CIC filter %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  decf    = 10;  % Decimation Factor
  diffd   = 1;   % Differential Delay
  numsecs = 5;   % Number of Sections
  
   hm = mfilt.cicdecim(decf, diffd, numsecs);
    sci=double(filter(hm,smi));
   scq=double(filter(hm,smq));
    n=length(sci);
   t = linspace(-taup/2,taup/2,n);
    figure(3)
   subplot(4,1,1)
    plot(t, sci,'k')
    ylabel('real part of   signal smi after cic filter')
    xlabel('time in seconds')
   grid
    subplot(4,1,2)
   sampling_interval = 1 / 5 /fc;
   freqlimit = 0.5/ sampling_interval;
   freq = linspace(-freqlimit,freqlimit,n);
    plot(freq,fftshift(abs(fft( sci ))),'k');
    ylabel('Spectrum of sci')
   xlabel('Frequency in Hz')
  grid
   
 subplot(4,1,3)
 plot(t, scq,'k')
  ylabel('imap part of   signal sm after mixed')
  xlabel('time in seconds')
  grid
  subplot(4,1,4)
  sampling_interval = 1 / 5 /fc;
  freqlimit = 0.5/ sampling_interval;
  freq = linspace(-freqlimit,freqlimit,n);
  plot(freq,fftshift(abs(fft( scq ))),'k');
  ylabel('Spectrum of smq')
  xlabel('Frequency in Hz')
  grid
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%lpf filter %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   Fs = 9.98;  % Sampling Frequency
   
  Fpass = 1;               % Passband Frequency
  Fstop = 1.5;             % Stopband Frequency
  Dpass = 0.057501127785;  % Passband Ripple
  Dstop = 0.0001;          % Stopband Attenuation
  dens  = 20;              % Density Factor
  
  % Calculate the order from the parameters using FIRPMORD.
  [N, Fo, Ao, W] = firpmord([Fpass, Fstop]/(Fs/2), [1 0], [Dpass, Dstop]);
   
  % Calculate the coefficients using the FIRPM function.
  b  = firpm(N, Fo, Ao, W, {dens});
  Hd = dfilt.dffir(b);
   
 spi=double(filter(Hd,sci));
 spq=double(filter(Hd,scq));
 n=length(spi);
 t = linspace(-taup/2,taup/2,n);
 figure(4)
 subplot(4,1,1)
 plot(t, spi,'k')
 ylabel('real part of   signal spi after lpf filter')
 xlabel('time in seconds')
  grid
  subplot(4,1,2)
  sampling_interval = 1 / 5 /fc;
  freqlimit = 0.5/ sampling_interval;
  freq = linspace(-freqlimit,freqlimit,n);
  plot(freq,fftshift(abs(fft( spi ))),'k');
  ylabel('Spectrum of spi')
  xlabel('Frequency in Hz')
  grid
  
  subplot(4,1,3)
  plot(t, spq,'k')
  ylabel('imap part of   signal sm after lpf filter')
  xlabel('time in seconds')
  grid
  subplot(4,1,4)
  sampling_interval = 1 / 5 /fc;
  freqlimit = 0.5/ sampling_interval;
  freq = linspace(-freqlimit,freqlimit,n);
  plot(freq,fftshift(abs(fft( spq ))),'k');
  ylabel('Spectrum of smq')
  xlabel('Frequency in Hz')
  grid