close all;
clear;clc;

tic;

%系统参数
displayLFM = 1;     %%显示LFM信号
displayEcho = 1;    %%显示回波信号
displaynonoise = 1;


%雷达发送和接收信号模拟
%光速
c = 3e8;
%回波数量
Npulse = 16;

%MTD的N点FFT
Nfft = 16;

%波形参数
rLambda = 2e-2;     %雷达工作波长2cm
rBandWidth = 10e6;  %信号带宽10MHz
rTimeWidth = 6.4e-6;%发射信号时宽
% PRT=51.2e-6;            %雷达发射脉冲重复周期(s)
% PRF=1/PRT;
rPRT = 51.2e-6;         %雷达发射脉冲重复周期
rPRF = 1 / rPRT;    %雷达发射脉冲重复周期（最大不模糊距离：250*300/2 = 37500m，最大不模糊速度：-20m/s~+20m/s)
fc = 30e6;         %中频载波

K = rBandWidth / rTimeWidth;
%ADC参数
Fs = 40e6;          %采样频率40MHz
Ts = 1/Fs;

Nsample = fix(Fs * rPRT);%一个脉冲周期的采样点数
Ntotal = Nsample * Npulse;%总的采样点数
Nblind = fix(Fs * rTimeWidth);%一个脉冲周期的盲区-遮蔽采样点数

%目标参数
Ntarget = 3;%目标数
Ptarget(1:Ntarget) = [1 2 3];%木笔功率

Starget(1:Ntarget) = [25000 30010 33000];%目标距离
Vtarget(1:Ntarget) = [5 25 35];%目标速度 m/s

NTtarget(1:Ntarget) = fix(Fs * 2 * Starget ./ c);%将目标距离转换成采样点数
Fdtarget(1:Ntarget) = 2 * Vtarget ./ rLambda;%将目标速度转换成多普勒频移


%发送端产生脉冲调频信号
Ntx = Nblind;%回波的采样点数=脉压系数长度=暂态点数目+1
if rem(Ntx,2) ~= 0
    Ntx = Ntx + 1;
end

TXchirp(1:Ntx) = 0;
for k = -fix(Ntx/2) : fix(Ntx/2) - 1
   TXchirp( k + fix(Ntx/2) + 1) = exp(1i*pi*K*(k/Fs).^2 + 2*1i*pi*fc*(k/Fs)); 
   TX2chirp( k + fix(Ntx/2) + 1) = exp(1i*pi*K*(k/Fs).^2); 
end
%信道噪声
%RXchirp = y + wgn(1,length(y),-12);

if displayLFM
    figure('name','LFM1信号');
    subplot(311);plot(real(TXchirp));axis([0 Ntx -2 2]);title('LFM1信号实部');
    subplot(312);plot(imag(TXchirp));axis([0 Ntx -2 2]);title('LFM1信号虚部');
    subplot(313);freq=linspace(0,Fs,Nsample);plot(freq,abs(fft(TXchirp,Nsample)));axis([0 4e7 0 50]);title('LFM1信号频谱');
    figure('name','LFM2信号');
    subplot(311);plot(real(TX2chirp));axis([0 Ntx -2 2]);title('LFM2信号实部');
    subplot(312);plot(imag(TX2chirp));axis([0 Ntx -2 2]);title('LFM2信号虚部');
    subplot(313);freq=linspace(0,Fs,Nsample);plot(freq,abs(fft(TX2chirp,Nsample)));axis([0 4e7 0 50]);title('LFM2信号频谱');
end

%接收端回波信号
RXsignal = zeros(1,Ntotal);
for k = 1 : Ntarget
    signalTemp(1:Nsample) =0;%产生一个脉冲
    %产生一个目标
    signalTemp(NTtarget(k)+1:NTtarget(k)+Ntx) = sqrt(Ptarget(k))*TXchirp;
    signal = zeros(1,Ntotal);
    for n = 1 : Npulse
        signal((n-1)*Nsample+1:n*Nsample) = signalTemp(1:Nsample);
    end
    %多普勒相移
    fre = exp(1i*2*pi*Fdtarget(k)*((0:Ntotal-1)./ Fs));
    signal = signal .* fre;
    RXsignal = RXsignal + signal;
end

if displaynonoise
    y = RXsignal;
    %在接收机闭锁期,接收的回波为0
    for n = 1 : Npulse
       y((n-1)*Nsample+1:(n-1)*Nsample+Ntx) = 0; 
    end
    figure('name','回波信号（无噪声）');
%     ts = linspace(1,rPRT*Npulse,Ntotal);
%     plot(ts*1e6,abs(real(y)));
%     ts = linspace(1,rPRT*Npulse,Ntotal);
    plot(abs(real(y)));
    xlabel('time/us');
    title('接收回波信号');
    axis tight;
    grid on;
end


%系统噪声
Noice=1.8*normrnd(0,10^(-12/10),1,Ntotal)+1i*normrnd(0,10^(-12/10),1,Ntotal);
y = RXsignal + Noice;
%在接收机闭锁期,接收的回波为0
for n = 1 : Npulse
   y((n-1)*Nsample+1:(n-1)*Nsample+Ntx) = 0; 
end

Yreal = real(y);%实际接收到的信号
yy = Yreal;
figure('name','回波信号');
ts = linspace(1,rPRT*Npulse,Ntotal);
plot(ts*1e6,abs(yy));
xlabel('time/us');
title('接收回波信号');
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
%下变频
y_i = yy .* nco_i;
y_q = yy .* nco_q;

figure('name','数字下变频');
subplot(211);
ts = linspace(1,rPRT*Npulse,Ntotal);
plot(ts*1e6,abs(y_i));
xlabel('time/us');
title('数字下变频 I路信息');
axis tight;
grid on;

subplot(212);
ts = linspace(1,rPRT*Npulse,Ntotal);
plot(ts*1e6,abs(y_q));
xlabel('time/us');
title('数字下变频 Q路信息');
axis tight;
grid on;

%滤波抽取
Nfir = 64;
Fcfir = 20e6;
winhamming = hamming(Nfir+1);
hlowpass = fir1(Nfir,Fcfir/(Fs/2),'low',winhamming,'scale');
%滤波
ty2_i = conv(y_i,hlowpass);
ty2_q = conv(y_q,hlowpass);
%去掉暂态点
y2_i(1:Ntotal) = ty2_i(length(hlowpass):length(hlowpass)-1+Ntotal);
y2_q(1:Ntotal) = ty2_q(length(hlowpass):length(hlowpass)-1+Ntotal);
%抽取
D = 4;%抽取系数
DNtotal = fix(Ntotal / D);
y3_i = downsample(y2_i,D);
y3_q = downsample(y2_q,D);

figure('name','滤波抽取');
subplot(211);
ts = linspace(1,rPRT*Npulse,DNtotal);
plot(ts*1e6,abs(y3_i));
xlabel('time/us');
title('滤波抽取 I路信息');
axis tight;
grid on;

subplot(212);
ts = linspace(1,rPRT*Npulse,DNtotal);
plot(ts*1e6,abs(y3_q));
xlabel('time/us');
title('滤波抽取 Q路信息');
axis tight;
grid on;
%脉冲压缩
%产生时间参数
t = -fix(Nblind/2) : fix(Nblind/2) - 1;
%生产NCO
nco_i = cos(2*pi*f*t);
nco_q = sin(2*pi*f*t);
%h = cos(-pi*K*(t*Ts).^2);%匹配滤波的传递函数
h = conj(fliplr(TX2chirp));
%对匹配滤波器做分解
h_i = h .* nco_i;
h_q = h .* nco_q;
winhamming = hamming(length(h))';%生产窗函数
%生产IQ两路的匹配滤波器（要抽取）
winh_i = downsample(h_i .* winhamming,D);
winh_q = downsample(h_q .* winhamming,D);
%匹配滤波，完成脉冲压缩
ty4_i = conv(y3_i,winh_i);
ty4_q = conv(y3_q,winh_q);
%去掉暂态点
y4_i(1:DNtotal) = ty4_i(length(winh_i):length(winh_i)-1+DNtotal);
y4_q(1:DNtotal) = ty4_q(length(winh_i):length(winh_i)-1+DNtotal);
%按照脉冲号和距离门重新排列PD信号
DNsample = fix(Nsample / D);
ypc_i(1:Npulse,1:DNsample) = 0;
ypc_q(1:Npulse,1:DNsample) = 0;
for k = 1 : Npulse
    ypc_i(k,1:DNsample) = y4_i((k-1)*DNsample+1:k*DNsample);
    ypc_q(k,1:DNsample) = y4_q((k-1)*DNsample+1:k*DNsample);
end
figure('name','脉冲压缩');
mesh(abs(ypc_i));
% figure('name','脉冲压缩');
% subplot(211);
% plot(abs(ypc_i(1,:)));
% title('脉冲压缩 I路信息');
% axis tight;
% grid on;
% subplot(212);
% plot(abs(ypc_q(1,:)));
% title('脉冲压缩 Q路信息');
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
% % %去掉暂态点
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
% % title('MTI I路信息');
% % axis tight;
% % grid on;
% % subplot(212);
% % plot(abs(ymti_q(1,:)));
% % title('MTI Q路信息');
% % axis tight;
% % grid on;
% 
% %MTD
% %构建MTD数字，行是每个回波脉冲的采样值，列是回波脉冲数（代表对于的距离的回波信息）
% ymtd_i(1:Nfft,1:DNsample) = 0;
% ymtd_q(1:Nfft,1:DNsample) = 0;
% for k = 1 : DNsample
%     temp_i(1:Npulse) = ymti_i(1:Npulse,k);
%     temp_q(1:Npulse) = ymti_i(1:Npulse,k);
%     ymtd_i(1:Nfft,k) = fft(temp_i,Nfft)';
%     ymtd_q(1:Nfft,k) = fft(temp_q,Nfft)';
% end
% % figure('name','MTD各个通道情况');
% % for k = 1 : Npulse
% %    subplot(4,4,k);
% %    plot(abs(ymtd_i(k,:)));
% % end
% figure('name','MTD情况');
% mesh(abs(ymtd_i));
% % %合并N路数据
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
% % figure('name','MTD合并之后');
% % % subplot(211);
% % plot(abs(ytmdi));
% % title('MTD I路信息');
% % axis tight;
% % grid on;
% % subplot(212);
% % plot(abs(ytmdq));
% % title('MTD Q路信息');
% % axis tight;
% % grid on;
% 
% %恒虚警检测
% %求功率
% ycfar_t = abs(sqrt(ymtd_i .^2 + ymtd_q .^2));
% %单目标检测
% H0 = 0;
% H1 = 1;
% %选择最大值
% target(1:Nfft,1:DNsample) = 0;
% for k = 1 : DNsample
%      ycfar = ycfar_t(:,k)';
%     %帧数较少时
%     [value,postion] = max(ycfar);
%     sum = ycfar(postion);
%     ycfar(postion) = 0;
%     %计算背景噪声
%     noices = 0;
%     for n = 1 : Nfft
%        noices = noices + ycfar(n); 
%     end
%     avr_noice = noices / (Nfft-1);
%     %帧数较多时
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
%     %计算背景噪声
% %     avr_noice = 0;
% %     for n = 1 : Nfft
% %        avr_noice = avr_noice + ycfar(n);
% %     end
% %     avr_noice = avr_noice / (Nfft-7-6);
%     %功率归一化
%     power = sum / avr_noice;
%     %判决
%     DOOR = 100;
%     if ( power > DOOR)
%         state = 1;
%     else 
%         state = 0;
%     end
%     target(postion,k) = state;
% 
% end
% figure('name','CFAR情况');
% mesh(abs(target));
% toc;


