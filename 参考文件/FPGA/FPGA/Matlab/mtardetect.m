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
 NoisePower=-30;%(dB);%噪声功率（目标为0dB）
 SampleNumber=fix(Fs*PRT);%计算一个脉冲周期的采样点数；
 TotalNumber=SampleNumber*PulseNumber;%总的采样点数；
 BlindNumber=fix(Fs*TimeWidth);%计算一个脉冲周期的盲区-遮挡样点数
%                                    目标参数                                       %
 %===================================================================================%
TargetNumber=1;%目标个数
SigPower(1:TargetNumber)=[1];%目标功率,无量纲
TargetDistance(1:TargetNumber)=[4000];%目标距离,单位m  
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
    baseban(i+fix(number/2)+1)=exp(1j*(pi*(BandWidth/TimeWidth)*(i/Fs)^2));
 end
%  coeff=conj(fliplr(Chirp));%把Chirp矩阵翻转并把复数共轭，产生脉压系数
 figure(1);%脉压系数的实部
 plot(real(Chirp));axis([0 300 -1.5 1.5]);title('脉压系数实部');
  %-------------------------产生目标回波串---------------------------------------------------------
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
 SystemNoise=normrnd(0,10^(NoisePower/10),1,TotalNumber)+j*normrnd(0,10^(NoisePower/10),1,TotalNumber);
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
  Echo = real(Echo);
 %=========================================DDC===============================%
 %--------------------------------------- NCO
Echo_I = Echo.*cos(1/4*2*pi*(0:TotalNumber-1));% I路
Echo_Q = Echo.*sin(1/4*2*pi*(0:TotalNumber-1)); %Q路
[n,fo,ao,w] = firpmord( [5e6 5.1e6], [1 0], [0.01 0.1], 40e6 );
 b = firpm(n,fo,ao,w);
 fil_I = filter(b,1,Echo_I);
 fil_Q = filter(b,1,Echo_Q);
 Echo = fil_I + 1i*fil_Q;
  
  %================================时域脉压=================================%
 coeff = conj(fliplr(baseban));
 pc_time0=conv(Echo,coeff);%pc_time0为Echo和coeff的卷积
 pc_time1=pc_time0(number:TotalNumber+number-1);%去掉暂态点 number-1个
 figure(4);%时域脉压结果的幅度
 subplot(2,1,1);plot(abs(pc_time0),'r-');title('时域脉压结果的幅度');%pc_time0的模的曲线
 subplot(2,1,2);plot(abs(pc_time1));title('时域脉压结果的幅度');%pc_time1的模的曲线
 
  % ================================频域脉压=================================%
 Echo_fft=fft(Echo,TotalNumber+number-1);%进行TotalNumber+number-1点FFT
 coeff_fft=fft(coeff,TotalNumber+number-1);
 pc_fft=Echo_fft.*coeff_fft;
 pc_freq0=ifft(pc_fft);
 figure(5);
 subplot(2,1,1);plot(abs(pc_freq0(1:TotalNumber+number-1)));title('频域脉压结果的幅度,有前暂态点');
 subplot(2,1,2);plot(abs(pc_time0(1:TotalNumber+number-1)-pc_freq0(1:TotalNumber+number-1)),'r');title('时域和频域脉压的差别');
 pc_freq1=pc_freq0(number:TotalNumber+number-1);%去掉暂态点 number-1个,后填充点若干
 
 %============按照脉冲号、距离门号重排数据=================================%
 for i=1:PulseNumber
       pc(i,1:SampleNumber)=pc_freq1((i-1)*SampleNumber+1:i*SampleNumber);%每个PRT为一行，
 end
 figure(6);
 plot(abs(pc(1,:)));title('频域脉压结果的幅度,没有暂态点');

 % ================MTI（动目标显示）,对消静止目标和低速目标---可抑制杂波=================================%
 for i=1:PulseNumber-2  %滑动对消，少了一个脉冲
    mti(i,:)=pc(i+2,:)-2*pc(i+1,:)+pc(i,:);
 end
 figure(7);
 mesh(abs(mti));title('MTI  result');

 % ================MTD（动目标检测）,区分不同速度的目标，有测速作用=================================%
 mtd=zeros(PulseNumber,SampleNumber);
 for i=1:SampleNumber
    buff(1:PulseNumber)=pc(1:PulseNumber,i);
    buff_fft=fft(buff);
    mtd(1:PulseNumber,i)=buff_fft(1:PulseNumber);
 end
   figure(8);mesh(abs(mtd));title('MTD  result');
   
   
 % ===============CFAR =============================================================  
mtd_result=abs(mtd);
protect_num=3;  %% 保护单元的个数
window_lenth=16;  %%窗长
T=3.8;           %%第二门限
cfar_result_z=zeros(1,3*SampleNumber);                   %%列结果
cfar_result=zeros(PulseNumber,SampleNumber);    %矩阵结果
for j=1:PulseNumber
    cfar_in_z=mtd_result(j,1:end);        %取MTD结果的第j个通道
    for i=1:SampleNumber
        if i<=protect_num+1
            left_window_z=0;
        elseif i<=window_lenth+protect_num
            left_window_z=mean(cfar_in_z(1:i-protect_num-1));
        else
            left_window_z=mean(cfar_in_z(i-window_lenth-protect_num:i-protect_num-1));
        end
        if i>=SampleNumber-protect_num
            right_window_z=0;
        elseif i>SampleNumber-window_lenth-protect_num
            right_window_z=mean(cfar_in_z(i+protect_num+1:SampleNumber));
        else
            right_window_z=mean(cfar_in_z(i+protect_num+1:i+protect_num+window_lenth));
        end
        if cfar_in_z(i)>T*max(left_window_z,right_window_z)        %CFAR选大。若输入大于门限值，则保留原值，否则置零
            cfar_out=cfar_in_z(i);
            cfar_result(j,i)=cfar_in_z(i);
        else
            cfar_out=0;
            cfar_result(j,i)=0;
        end
        if cfar_out>cfar_result_z(1,3*(i-1)+1)         %单通道结果再与恒虚警结果进行选大
            cfar_result(j,i)=cfar_out;              %%三维图
            cfar_result_z(1,3*(i-1)+1)=cfar_out;    %%幅度
            cfar_result_z(1,3*(i-1)+2)=i;     %%距离
            cfar_result_z(1,3*(i-1)+3)=j;        %%速度
        end
    end
end
figure(9),subplot(9,1,1),plot(cfar_result_z(1:3:end));title('CFAR幅度结果');
subplot(9,1,2),plot(cfar_result_z(2:3:end));title('CFAR距离结果');
subplot(9,1,3),plot(cfar_result_z(3:3:end));title('CFAR速度结果');
figure(10),mesh(abs(cfar_result));
grid on;xlabel('距离单元');ylabel('通道数');zlabel(' 幅度');title('CFAR结果');

 