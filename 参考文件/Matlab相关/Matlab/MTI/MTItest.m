close all; 
clear all; 
clc;
 C=3.0e8;  %光速(m/s)
 RF=1e10;  %雷达射频 10GHz
 Lambda=C/RF;%雷达工作波长
 fc = 30e6; % 载波频率
 PulseNumber=16;   %回波脉冲数
 BandWidth=10e6;  %发射信号带宽 带宽B=1/τ，τ是脉冲宽度 
TimeWidth=6.4e-6; %发射信号时宽
 PRT=51.2e-6;   % 雷达发射脉冲重复周期(s)
 PRF=1/PRT;
 Fs=40e6;  %采样频率
 NoisePower=-120;%(dB);%噪声功率（目标为0dB）
 SampleNumber=fix(Fs*PRT);%计算一个脉冲周期的采样点数；
 TotalNumber=SampleNumber*PulseNumber;%总的采样点数；
 BlindNumber=fix(Fs*TimeWidth);%计算一个脉冲周期的盲区-遮挡样点数
%                                    目标参数                                       %
 %===================================================================================%
TargetNumber=1;%目标个数
SigPower(1:TargetNumber)=[1];%目标功率,无量纲
TargetDistance(1:TargetNumber)=[2000];%目标距离,单位m  
DelayNumber(1:TargetNumber)=fix(Fs*2*TargetDistance(1:TargetNumber)/C);% 把目标距离换算成采样点（距离门） fix函数向0靠拢取整
TargetVelocity(1:TargetNumber)=[18.3];%目标径向速度 单位m/s  
TargetFd(1:TargetNumber)=2*TargetVelocity(1:TargetNumber)/Lambda; %计算目标多卜勒频移2v/λ
 %                                   产生线性调频信号                                  %
 %====================================================================================%
number=fix(Fs*TimeWidth);%回波的采样点数=脉压系数长度=暂态点数目+1
 if rem(number,2)~=0  %rem求余
    number=number+1;
 end   %把number变为偶数

 for i=-fix(number/2):fix(number/2)-1
    Chirp(i+fix(number/2)+1)=exp(1j*2*pi*fc*(i/Fs)+1j*(pi*(BandWidth/TimeWidth)*(i/Fs)^2));%exp(j*fi)*，产生复数矩阵Chirp
 end
 coeff=conj(fliplr(Chirp));%把Chirp矩阵翻转并把复数共轭，产生脉压系数
 figure(1);%脉压系数的实部
 plot(real(Chirp));axis([0 300 -1.5 1.5]);title('脉压系数实部');
  %-------------------------产生目标回波串-----------------------------%
   SignalAll=zeros(1,TotalNumber);%所有脉冲的信号,先填0
 for k=1:TargetNumber % 依次产生各个目标
    SignalTemp=zeros(1,SampleNumber);% 一个PRT
    SignalTemp(DelayNumber(k)+1:DelayNumber(k)+number)=sqrt(SigPower(k))*Chirp;%一个脉冲的1个目标（未加多普勒速度）(DelayNumber(k)+1):(DelayNumber(k)+number)
    Signal=zeros(1,TotalNumber);
    for i=1:PulseNumber % 16个回波脉冲
       Signal((i-1)*SampleNumber+1:i*SampleNumber)=SignalTemp; %每个目标把16个SignalTemp排在一起
    end
    FreqMove=exp(j*2*pi*TargetFd(k)*(0:TotalNumber-1)/Fs);%目标的多普勒速度*时间=目标的多普勒相移
    Signal=Signal.*FreqMove;%加上多普勒速度后的16个脉冲1个目标
    SignalAll=SignalAll+Signal;%加上多普勒速度后的16个脉冲
 end
 figure(2);
 subplot(2,1,1);plot(real(SignalAll),'r-');title('目标信号的实部');grid on;zoom on;
 subplot(2,1,2);plot(imag(SignalAll));title('目标信号的虚部');grid on;zoom on;
 
  %                                   产生系统噪声信号                                  %
 %====================================================================================%
 SystemNoise= normrnd(0,10^(NoisePower/10),1,TotalNumber)+j*normrnd(0,10^(NoisePower/10),1,TotalNumber);
 %均值为0，标准差为10^(NoisePower/10)的噪声
 %====================================================================================%
 %                                   总的回波信号                                     %
 %====================================================================================%
 Echo=SignalAll+SystemNoise;% +SeaClutter+TerraClutter，加噪声之后的回波

  for i=1:PulseNumber   %在接收机闭锁期,接收的回波为0
       Echo((i-1)*SampleNumber+1:(i-1)*SampleNumber+number)=0; %发射时接收为0
 end
 figure(3);%加噪声之后的总回波信号
 subplot(2,1,1);plot(real(Echo),'r-');title('总回波信号的实部');
 subplot(2,1,2);plot(imag(Echo));title('总回波信号的虚部');
  

 %--------------------------------------- NCO---------------------%
Echo_I = Echo.*cos(1/4*2*pi*(0:TotalNumber-1));% I路
Echo_Q = Echo.*sin(1/4*2*pi*(0:TotalNumber-1)); %Q路
[n,fo,ao,w] = firpmord( [5e6 5.1e6], [1 0], [0.01 0.1], 40e6 );
 b = firpm(n,fo,ao,w);
 fil_I = filter(b,1,Echo_I);
 fil_Q = filter(b,1,Echo_Q);
  
  %================================时域脉压=================================%

   Echo = fil_I + 1i*fil_Q;
   pc_time0=conv(Echo,coeff);                                                %pc_time0为Echo和coeff的卷积
 pc_time1=pc_time0(number:TotalNumber+number-1);                           %去掉暂态点 number-1个
 figure(4);                                                                %时域脉压结果的幅度
 subplot(2,1,1);plot(abs(pc_time0),'r-');title('时域脉压结果的幅度');        %pc_time0的模的曲线
 subplot(2,1,2);plot(abs(pc_time1));title('时域脉压结果的幅度');             %pc_time1的模的曲线
 
  % ================================频域脉压=================================%
 Echo_fft=fft(Echo,TotalNumber+number-1);                                   %进行TotalNumber+number-1点FFT
 coeff_fft=fft(coeff,TotalNumber+number-1);
 pc_fft=Echo_fft.*coeff_fft;
 pc_freq0=ifft(pc_fft);
 figure(5);
 subplot(2,1,1);plot(abs(pc_freq0(1:TotalNumber+number-1)));title('频域脉压结果的幅度,有前暂态点');
 subplot(2,1,2);plot(abs(pc_time0(1:TotalNumber+number-1)-pc_freq0(1:TotalNumber+number-1)),'r');title('时域和频域脉压的差别');
 pc_freq1=pc_freq0(number:TotalNumber+number-1);                            %去掉暂态点 number-1个,后填充点若干
 
 %============按照脉冲号、距离门号重排数据=================================%
 for i=1:PulseNumber
       pc(i,1:SampleNumber)=pc_freq1((i-1)*SampleNumber+1:i*SampleNumber); %每个PRT为一行，每行480个采样点的数据
 end
 figure(6);
 plot(abs(pc(1,:)));title('频域脉压结果的幅度,没有暂态点');

 % ----------------MTI----------------------%
 for i=1:PulseNumber-2
    mti(i,:)=pc(i+2,:)+pc(i,:)-2*pc(i+1,:);
 end
  %--------------相参积累-------------------%
 mti_ac = zeros(1,length(mti(1,:)));
 for i=1:PulseNumber-2
    mti_ac=mti_ac + mti(i,:);
 end
 figure(7)
 plot(abs(mti_ac));title('脉冲累积结果');
 
 
%------CA_CFAR-------------------------------%
mtd_result=abs(mti_ac);
N3=length(mtd_result)
cfar_result=zeros(1,N3);
cfar_result(1,1)=mean(mtd_result(1,2:4));                                           % 第1点恒虚警处理时噪声均值由其后面的3点的噪声决定
for i=2:3 
   noise_mean=(mean(mtd_result(1,1:i-1))+mean(mtd_result(1,i+1:i+3)))/2;           % 第2点到第3点的恒虚警处理时噪声均值由其前面和后面的3点的噪声共同决定
   cfar_result(1,i)=noise_mean;
end
for i=4:N3-4                                                                        % 正常的数据点的恒虚警处理的噪声均值由其前面和后面各3点的噪声中的大者决定
   noise_mean=(mean(mtd_result(1,i-3:i-1))+mean(mtd_result(1,i+1:i+3)))/2;
   cfar_result(1,i)=noise_mean;
end
for i=N3-3:N3-1                                                                % 倒数第3个点到倒数第二点的恒虚警处理的噪声均值由其前面3点和后面的噪声共同决定
   noise_mean=(mean(mtd_result(1,i-3:i-1))+mean(mtd_result(1,i+1:N3)))/2;
   cfar_result(1,i)=noise_mean;
end

cfar_result(1,N3)=mean(mtd_result(1,N3-3:N3-1));                       % 最后一点恒虚警处理时噪声均值由其前面的3点的噪声决定


figure(8),plot(abs(cfar_result));
grid on;xlabel('距离单元');ylabel('通道数');zlabel(' 幅度');title('CFAR结果');


figure
subplot(4,1,1)
plot(real(pc(1,:)))
subplot(4,1,2)
plot(imag(pc(1,:)))
subplot(4,1,3)
plot(real(pc(2,:)))
subplot(4,1,4)
plot(imag(pc(2,:)))

figure
subplot(2,1,1)
plot(real(pc(1,:))-real(pc(2,:)))
subplot(2,1,2)
plot(imag(pc(1,:))-imag(pc(2,:)))
