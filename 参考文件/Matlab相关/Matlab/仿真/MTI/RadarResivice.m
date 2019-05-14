close all;
clear;clc;

tic;

%ϵͳ����
displayLFM = 1;     %%��ʾLFM�ź�
displayEcho = 1;    %%��ʾ�ز��ź�
displaynonoise = 1;


%�״﷢�ͺͽ����ź�ģ��
%����
c = 3e8;
%�ز�����
Npulse = 16;

%MTD��N��FFT
Nfft = 16;

%���β���
rLambda = 2e-2;     %�״﹤������2cm
rBandWidth = 10e6;  %�źŴ���10MHz
rTimeWidth = 6.4e-6;%�����ź�ʱ��
% PRT=51.2e-6;            %�״﷢�������ظ�����(s)
% PRF=1/PRT;
rPRT = 51.2e-6;         %�״﷢�������ظ�����
rPRF = 1 / rPRT;    %�״﷢�������ظ����ڣ����ģ�����룺250*300/2 = 37500m�����ģ���ٶȣ�-20m/s~+20m/s)
fc = 30e6;         %��Ƶ�ز�

K = rBandWidth / rTimeWidth;
%ADC����
Fs = 40e6;          %����Ƶ��40MHz
Ts = 1/Fs;

Nsample = fix(Fs * rPRT);%һ���������ڵĲ�������
Ntotal = Nsample * Npulse;%�ܵĲ�������
Nblind = fix(Fs * rTimeWidth);%һ���������ڵ�ä��-�ڱβ�������

%Ŀ�����
Ntarget = 3;%Ŀ����
Ptarget(1:Ntarget) = [1 2 3];%ľ�ʹ���

Starget(1:Ntarget) = [25000 30010 33000];%Ŀ�����
Vtarget(1:Ntarget) = [5 25 35];%Ŀ���ٶ� m/s

NTtarget(1:Ntarget) = fix(Fs * 2 * Starget ./ c);%��Ŀ�����ת���ɲ�������
Fdtarget(1:Ntarget) = 2 * Vtarget ./ rLambda;%��Ŀ���ٶ�ת���ɶ�����Ƶ��


%���Ͷ˲��������Ƶ�ź�
Ntx = Nblind;%�ز��Ĳ�������=��ѹϵ������=��̬����Ŀ+1
if rem(Ntx,2) ~= 0
    Ntx = Ntx + 1;
end

TXchirp(1:Ntx) = 0;
for k = -fix(Ntx/2) : fix(Ntx/2) - 1
   TXchirp( k + fix(Ntx/2) + 1) = exp(1i*pi*K*(k/Fs).^2 + 2*1i*pi*fc*(k/Fs)); 
   TX2chirp( k + fix(Ntx/2) + 1) = exp(1i*pi*K*(k/Fs).^2); 
end
%�ŵ�����
%RXchirp = y + wgn(1,length(y),-12);

if displayLFM
    figure('name','LFM1�ź�');
    subplot(311);plot(real(TXchirp));axis([0 Ntx -2 2]);title('LFM1�ź�ʵ��');
    subplot(312);plot(imag(TXchirp));axis([0 Ntx -2 2]);title('LFM1�ź��鲿');
    subplot(313);freq=linspace(0,Fs,Nsample);plot(freq,abs(fft(TXchirp,Nsample)));axis([0 4e7 0 50]);title('LFM1�ź�Ƶ��');
    figure('name','LFM2�ź�');
    subplot(311);plot(real(TX2chirp));axis([0 Ntx -2 2]);title('LFM2�ź�ʵ��');
    subplot(312);plot(imag(TX2chirp));axis([0 Ntx -2 2]);title('LFM2�ź��鲿');
    subplot(313);freq=linspace(0,Fs,Nsample);plot(freq,abs(fft(TX2chirp,Nsample)));axis([0 4e7 0 50]);title('LFM2�ź�Ƶ��');
end

%���ն˻ز��ź�
RXsignal = zeros(1,Ntotal);
for k = 1 : Ntarget
    signalTemp(1:Nsample) =0;%����һ������
    %����һ��Ŀ��
    signalTemp(NTtarget(k)+1:NTtarget(k)+Ntx) = sqrt(Ptarget(k))*TXchirp;
    signal = zeros(1,Ntotal);
    for n = 1 : Npulse
        signal((n-1)*Nsample+1:n*Nsample) = signalTemp(1:Nsample);
    end
    %����������
    fre = exp(1i*2*pi*Fdtarget(k)*((0:Ntotal-1)./ Fs));
    signal = signal .* fre;
    RXsignal = RXsignal + signal;
end

if displaynonoise
    y = RXsignal;
    %�ڽ��ջ�������,���յĻز�Ϊ0
    for n = 1 : Npulse
       y((n-1)*Nsample+1:(n-1)*Nsample+Ntx) = 0; 
    end
    figure('name','�ز��źţ���������');
%     ts = linspace(1,rPRT*Npulse,Ntotal);
%     plot(ts*1e6,abs(real(y)));
%     ts = linspace(1,rPRT*Npulse,Ntotal);
    plot(abs(real(y)));
    xlabel('time/us');
    title('���ջز��ź�');
    axis tight;
    grid on;
end


%ϵͳ����
Noice=1.8*normrnd(0,10^(-12/10),1,Ntotal)+1i*normrnd(0,10^(-12/10),1,Ntotal);
y = RXsignal + Noice;
%�ڽ��ջ�������,���յĻز�Ϊ0
for n = 1 : Npulse
   y((n-1)*Nsample+1:(n-1)*Nsample+Ntx) = 0; 
end

Yreal = real(y);%ʵ�ʽ��յ����ź�
yy = Yreal;
figure('name','�ز��ź�');
ts = linspace(1,rPRT*Npulse,Ntotal);
plot(ts*1e6,abs(yy));
xlabel('time/us');
title('���ջز��ź�');
axis tight;
grid on;

%NCO
f = rBandWidth;
nco_i(1:Ntotal) = 0;
nco_q(1:Ntotal) = 0;
for k = -fix(Ntotal/2) : fix(Ntotal/2) - 1
   nco_i(k+fix(Ntotal/2)+1) = cos(2*pi*f*(k*Ts));
   nco_q(k+fix(Ntotal/2)+1) = sin(2*pi*f*(k*Ts));
end
%�±�Ƶ
y_i = yy .* nco_i;
y_q = yy .* nco_q;

figure('name','�����±�Ƶ');
subplot(211);
ts = linspace(1,rPRT*Npulse,Ntotal);
plot(ts*1e6,abs(y_i));
xlabel('time/us');
title('�����±�Ƶ I·��Ϣ');
axis tight;
grid on;

subplot(212);
ts = linspace(1,rPRT*Npulse,Ntotal);
plot(ts*1e6,abs(y_q));
xlabel('time/us');
title('�����±�Ƶ Q·��Ϣ');
axis tight;
grid on;

%�˲���ȡ
Nfir = 64;
Fcfir = 20e6;
winhamming = hamming(Nfir+1);
hlowpass = fir1(Nfir,Fcfir/(Fs/2),'low',winhamming,'scale');
%�˲�
ty2_i = conv(y_i,hlowpass);
ty2_q = conv(y_q,hlowpass);
%ȥ����̬��
y2_i(1:Ntotal) = ty2_i(length(hlowpass):length(hlowpass)-1+Ntotal);
y2_q(1:Ntotal) = ty2_q(length(hlowpass):length(hlowpass)-1+Ntotal);
%��ȡ
D = 4;%��ȡϵ��
DNtotal = fix(Ntotal / D);
y3_i = downsample(y2_i,D);
y3_q = downsample(y2_q,D);

figure('name','�˲���ȡ');
subplot(211);
ts = linspace(1,rPRT*Npulse,DNtotal);
plot(ts*1e6,abs(y3_i));
xlabel('time/us');
title('�˲���ȡ I·��Ϣ');
axis tight;
grid on;

subplot(212);
ts = linspace(1,rPRT*Npulse,DNtotal);
plot(ts*1e6,abs(y3_q));
xlabel('time/us');
title('�˲���ȡ Q·��Ϣ');
axis tight;
grid on;
%����ѹ��
%����ʱ�����
t = -fix(Nblind/2) : fix(Nblind/2) - 1;
%����NCO
nco_i = cos(2*pi*f*t);
nco_q = sin(2*pi*f*t);
%h = cos(-pi*K*(t*Ts).^2);%ƥ���˲��Ĵ��ݺ���
h = conj(fliplr(TX2chirp));
%��ƥ���˲������ֽ�
h_i = h .* nco_i;
h_q = h .* nco_q;
winhamming = hamming(length(h))';%����������
%����IQ��·��ƥ���˲�����Ҫ��ȡ��
winh_i = downsample(h_i .* winhamming,D);
winh_q = downsample(h_q .* winhamming,D);
%ƥ���˲����������ѹ��
ty4_i = conv(y3_i,winh_i);
ty4_q = conv(y3_q,winh_q);
%ȥ����̬��
y4_i(1:DNtotal) = ty4_i(length(winh_i):length(winh_i)-1+DNtotal);
y4_q(1:DNtotal) = ty4_q(length(winh_i):length(winh_i)-1+DNtotal);
%��������ź;�������������PD�ź�
DNsample = fix(Nsample / D);
ypc_i(1:Npulse,1:DNsample) = 0;
ypc_q(1:Npulse,1:DNsample) = 0;
for k = 1 : Npulse
    ypc_i(k,1:DNsample) = y4_i((k-1)*DNsample+1:k*DNsample);
    ypc_q(k,1:DNsample) = y4_q((k-1)*DNsample+1:k*DNsample);
end
figure('name','����ѹ��');
mesh(abs(ypc_i));
% figure('name','����ѹ��');
% subplot(211);
% plot(abs(ypc_i(1,:)));
% title('����ѹ�� I·��Ϣ');
% axis tight;
% grid on;
% subplot(212);
% plot(abs(ypc_q(1,:)));
% title('����ѹ�� Q·��Ϣ');
% axis tight;
% grid on;

% 
% %MTI
% % Calculate the coefficients using the FIRPM function.
% % hb  = firpm(256, [0 48 80 4000/2]/(4000/2), [0 0 1 1], [1 1],{20});
% % ty5_i(1:Npulse,1:DNsample+length(hb)-1) = 0;
% % ty5_q(1:Npulse,1:DNsample+length(hb)-1) = 0;
% % for k = 1 : Npulse
% %     ty5_i(k,:) = conv(ypc_i(k,:),hb);
% %     ty5_q(k,:) = conv(ypc_q(k,:),hb);
% % end
% % %ȥ����̬��
% % ymti_i(1:Npulse,1:DNsample) = 0;
% % ymti_q(1:Npulse,1:DNsample) = 0;
% % for k = 1 : Npulse
% %    ymti_i(k,:) = ty5_i(k,length(hb):length(hb)-1+DNsample);
% %    ymti_q(k,:) = ty5_q(k,length(hb):length(hb)-1+DNsample);  
% % end
% ymti_i(1:Npulse,1:DNsample) = 0;
% ymti_q(1:Npulse,1:DNsample) = 0;
% for k = 1 : Npulse
%     for n = 1 : DNsample -2
%         ymti_i(k,n) = ypc_i(k,n+2) - 2*ypc_i(k,n+1) + ypc_i(k,n);
%         ymti_q(k,n) = ypc_q(k,n+2) - 2*ypc_q(k,n+1) + ypc_q(k,n);
%     end
% end
% 
% figure('name','MTI');
% mesh(abs(ymti_i));
% % figure('name','MTI');
% % subplot(211);
% % plot(abs(ymti_i(1,:)));
% % title('MTI I·��Ϣ');
% % axis tight;
% % grid on;
% % subplot(212);
% % plot(abs(ymti_q(1,:)));
% % title('MTI Q·��Ϣ');
% % axis tight;
% % grid on;
% 
% %MTD
% %����MTD���֣�����ÿ���ز�����Ĳ���ֵ�����ǻز���������������ڵľ���Ļز���Ϣ��
% ymtd_i(1:Nfft,1:DNsample) = 0;
% ymtd_q(1:Nfft,1:DNsample) = 0;
% for k = 1 : DNsample
%     temp_i(1:Npulse) = ymti_i(1:Npulse,k);
%     temp_q(1:Npulse) = ymti_i(1:Npulse,k);
%     ymtd_i(1:Nfft,k) = fft(temp_i,Nfft)';
%     ymtd_q(1:Nfft,k) = fft(temp_q,Nfft)';
% end
% % figure('name','MTD����ͨ�����');
% % for k = 1 : Npulse
% %    subplot(4,4,k);
% %    plot(abs(ymtd_i(k,:)));
% % end
% figure('name','MTD���');
% mesh(abs(ymtd_i));
% % %�ϲ�N·����
% % ytmdi(1:DNsample) = 0;
% % ytmdq(1:DNsample) = 0;
% % for k = 1 : DNsample
% %    temp1 = 0;
% %    temp2 = 0;
% %    for n = 1 : Npulse
% %       temp1 = temp1 + ymtd_i(n,k);
% %       temp2 = temp2 + ymtd_q(n,k);
% %    end
% %    ytmdi(k) = temp1 / Npulse;
% %    ytmdq(k) = temp2 / Npulse;
% % end
% % 
% % figure('name','MTD�ϲ�֮��');
% % % subplot(211);
% % plot(abs(ytmdi));
% % title('MTD I·��Ϣ');
% % axis tight;
% % grid on;
% % subplot(212);
% % plot(abs(ytmdq));
% % title('MTD Q·��Ϣ');
% % axis tight;
% % grid on;
% 
% %���龯���
% %����
% ycfar_t = abs(sqrt(ymtd_i .^2 + ymtd_q .^2));
% %��Ŀ����
% H0 = 0;
% H1 = 1;
% %ѡ�����ֵ
% target(1:Nfft,1:DNsample) = 0;
% for k = 1 : DNsample
%      ycfar = ycfar_t(:,k)';
%     %֡������ʱ
%     [value,postion] = max(ycfar);
%     sum = ycfar(postion);
%     ycfar(postion) = 0;
%     %���㱳������
%     noices = 0;
%     for n = 1 : Nfft
%        noices = noices + ycfar(n); 
%     end
%     avr_noice = noices / (Nfft-1);
%     %֡���϶�ʱ
% %     for n = 1 : 6
% %        ycfar(n) = 0; 
% %     end
% %     sum = 0;
% %     [value,postion] = max(ycfar);
% %     for n = -3 : 3
% %         sum = sum + ycfar(postion+n);
% %         ycfar_t(postion+n) = 0;
% %     end
% %     sum = sum / 7;
%     %���㱳������
% %     avr_noice = 0;
% %     for n = 1 : Nfft
% %        avr_noice = avr_noice + ycfar(n);
% %     end
% %     avr_noice = avr_noice / (Nfft-7-6);
%     %���ʹ�һ��
%     power = sum / avr_noice;
%     %�о�
%     DOOR = 100;
%     if ( power > DOOR)
%         state = 1;
%     else 
%         state = 0;
%     end
%     target(postion,k) = state;
% 
% end
% figure('name','CFAR���');
% mesh(abs(target));
% toc;


