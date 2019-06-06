close all; 
clear all; 
clc;
 C=3.0e8;  %����(m/s)
 RF=1e10;  %�״���Ƶ 10GHz
 Lambda=C/RF;%�״﹤������
 fc = 30e6; % �ز�Ƶ��
 PulseNumber=16;   %�ز�������
 BandWidth=10e6;  %�����źŴ��� ����B=1/�ӣ����������� 
TimeWidth=6.4e-6; %�����ź�ʱ��
 PRT=51.2e-6;   % �״﷢�������ظ�����(s)
 PRF=1/PRT;
 Fs=40e6;  %����Ƶ��
 NoisePower=-30;%(dB);%�������ʣ�Ŀ��Ϊ0dB��
 SampleNumber=fix(Fs*PRT);%����һ���������ڵĲ���������
 TotalNumber=SampleNumber*PulseNumber;%�ܵĲ���������
 BlindNumber=fix(Fs*TimeWidth);%����һ���������ڵ�ä��-�ڵ�������
%                                    Ŀ�����                                       %
 %===================================================================================%
TargetNumber=1;%Ŀ�����
SigPower(1:TargetNumber)=[1];%Ŀ�깦��,������
TargetDistance(1:TargetNumber)=[4000];%Ŀ�����,��λm  
DelayNumber(1:TargetNumber)=fix(Fs*2*TargetDistance(1:TargetNumber)/C);% ��Ŀ����뻻��ɲ����㣨�����ţ� fix������0��£ȡ��
TargetVelocity(1:TargetNumber)=[18.3];%Ŀ�꾶���ٶ� ��λm/s  
TargetFd(1:TargetNumber)=2*TargetVelocity(1:TargetNumber)/Lambda; %����Ŀ��ಷ��Ƶ��2v/��
 %                                   �������Ե�Ƶ�ź�                                  %
 %====================================================================================%
number=fix(Fs*TimeWidth);%�ز��Ĳ�������=��ѹϵ������=��̬����Ŀ+1
 if rem(number,2)~=0  %rem����
    number=number+1;
 end   %��number��Ϊż��

 for i=-fix(number/2):fix(number/2)-1
    Chirp(i+fix(number/2)+1)=exp(1j*2*pi*fc*(i/Fs)+1j*(pi*(BandWidth/TimeWidth)*(i/Fs)^2));%exp(j*fi)*��������������Chirp
    baseban(i+fix(number/2)+1)=exp(1j*(pi*(BandWidth/TimeWidth)*(i/Fs)^2));
 end
%  coeff=conj(fliplr(Chirp));%��Chirp����ת���Ѹ������������ѹϵ��
 figure(1);%��ѹϵ����ʵ��
 plot(real(Chirp));axis([0 300 -1.5 1.5]);title('��ѹϵ��ʵ��');
  %-------------------------����Ŀ��ز���---------------------------------------------------------
   SignalAll=zeros(1,TotalNumber);%����������ź�,����0
 for k=1:TargetNumber % ���β�������Ŀ��
    SignalTemp=zeros(1,SampleNumber);% һ��PRT
    SignalTemp(DelayNumber(k)+1:DelayNumber(k)+number)=sqrt(SigPower(k))*Chirp;%һ�������1��Ŀ�꣨δ�Ӷ������ٶȣ�(DelayNumber(k)+1):(DelayNumber(k)+number)
    Signal=zeros(1,TotalNumber);
    for i=1:PulseNumber % 16���ز�����
       Signal((i-1)*SampleNumber+1:i*SampleNumber)=SignalTemp; %ÿ��Ŀ���16��SignalTemp����һ��
    end
    FreqMove=exp(j*2*pi*TargetFd(k)*(0:TotalNumber-1)/Fs);%Ŀ��Ķ������ٶ�*ʱ��=Ŀ��Ķ���������
    Signal=Signal.*FreqMove;%���϶������ٶȺ��16������1��Ŀ��
    SignalAll=SignalAll+Signal;%���϶������ٶȺ��16������
 end
 figure(2);
 subplot(2,1,1);plot(real(SignalAll),'r-');title('Ŀ���źŵ�ʵ��');grid on;zoom on;
 subplot(2,1,2);plot(imag(SignalAll));title('Ŀ���źŵ��鲿');grid on;zoom on;
 
  %                                   ����ϵͳ�����ź�                                  %
 %====================================================================================%
 SystemNoise=normrnd(0,10^(NoisePower/10),1,TotalNumber)+j*normrnd(0,10^(NoisePower/10),1,TotalNumber);
 %��ֵΪ0����׼��Ϊ10^(NoisePower/10)������
 %====================================================================================%
 %                                   �ܵĻز��ź�                                     %
 %====================================================================================%
 Echo=SignalAll+SystemNoise;% +SeaClutter+TerraClutter��������֮��Ļز�

  for i=1:PulseNumber   %�ڽ��ջ�������,���յĻز�Ϊ0
       Echo((i-1)*SampleNumber+1:(i-1)*SampleNumber+number)=0; %����ʱ����Ϊ0
 end
 figure(3);%������֮����ܻز��ź�
 subplot(2,1,1);plot(real(Echo),'r-');title('�ܻز��źŵ�ʵ��');
 subplot(2,1,2);plot(imag(Echo));title('�ܻز��źŵ��鲿');
  Echo = real(Echo);
 %=========================================DDC===============================%
 %--------------------------------------- NCO
Echo_I = Echo.*cos(1/4*2*pi*(0:TotalNumber-1));% I·
Echo_Q = Echo.*sin(1/4*2*pi*(0:TotalNumber-1)); %Q·
[n,fo,ao,w] = firpmord( [5e6 5.1e6], [1 0], [0.01 0.1], 40e6 );
 b = firpm(n,fo,ao,w);
 fil_I = filter(b,1,Echo_I);
 fil_Q = filter(b,1,Echo_Q);
 Echo = fil_I + 1i*fil_Q;
  
  %================================ʱ����ѹ=================================%
 coeff = conj(fliplr(baseban));
 pc_time0=conv(Echo,coeff);%pc_time0ΪEcho��coeff�ľ��
 pc_time1=pc_time0(number:TotalNumber+number-1);%ȥ����̬�� number-1��
 figure(4);%ʱ����ѹ����ķ���
 subplot(2,1,1);plot(abs(pc_time0),'r-');title('ʱ����ѹ����ķ���');%pc_time0��ģ������
 subplot(2,1,2);plot(abs(pc_time1));title('ʱ����ѹ����ķ���');%pc_time1��ģ������
 
  % ================================Ƶ����ѹ=================================%
 Echo_fft=fft(Echo,TotalNumber+number-1);%����TotalNumber+number-1��FFT
 coeff_fft=fft(coeff,TotalNumber+number-1);
 pc_fft=Echo_fft.*coeff_fft;
 pc_freq0=ifft(pc_fft);
 figure(5);
 subplot(2,1,1);plot(abs(pc_freq0(1:TotalNumber+number-1)));title('Ƶ����ѹ����ķ���,��ǰ��̬��');
 subplot(2,1,2);plot(abs(pc_time0(1:TotalNumber+number-1)-pc_freq0(1:TotalNumber+number-1)),'r');title('ʱ���Ƶ����ѹ�Ĳ��');
 pc_freq1=pc_freq0(number:TotalNumber+number-1);%ȥ����̬�� number-1��,����������
 
 %============��������š������ź���������=================================%
 for i=1:PulseNumber
       pc(i,1:SampleNumber)=pc_freq1((i-1)*SampleNumber+1:i*SampleNumber);%ÿ��PRTΪһ�У�
 end
 figure(6);
 plot(abs(pc(1,:)));title('Ƶ����ѹ����ķ���,û����̬��');

 % ================MTI����Ŀ����ʾ��,������ֹĿ��͵���Ŀ��---�������Ӳ�=================================%
 for i=1:PulseNumber-2  %��������������һ������
    mti(i,:)=pc(i+2,:)-2*pc(i+1,:)+pc(i,:);
 end
 figure(7);
 mesh(abs(mti));title('MTI  result');

 % ================MTD����Ŀ���⣩,���ֲ�ͬ�ٶȵ�Ŀ�꣬�в�������=================================%
 mtd=zeros(PulseNumber,SampleNumber);
 for i=1:SampleNumber
    buff(1:PulseNumber)=pc(1:PulseNumber,i);
    buff_fft=fft(buff);
    mtd(1:PulseNumber,i)=buff_fft(1:PulseNumber);
 end
   figure(8);mesh(abs(mtd));title('MTD  result');
   
   
 % ===============CFAR =============================================================  
mtd_result=abs(mtd);
protect_num=3;  %% ������Ԫ�ĸ���
window_lenth=16;  %%����
T=3.8;           %%�ڶ�����
cfar_result_z=zeros(1,3*SampleNumber);                   %%�н��
cfar_result=zeros(PulseNumber,SampleNumber);    %������
for j=1:PulseNumber
    cfar_in_z=mtd_result(j,1:end);        %ȡMTD����ĵ�j��ͨ��
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
        if cfar_in_z(i)>T*max(left_window_z,right_window_z)        %CFARѡ���������������ֵ������ԭֵ����������
            cfar_out=cfar_in_z(i);
            cfar_result(j,i)=cfar_in_z(i);
        else
            cfar_out=0;
            cfar_result(j,i)=0;
        end
        if cfar_out>cfar_result_z(1,3*(i-1)+1)         %��ͨ�����������龯�������ѡ��
            cfar_result(j,i)=cfar_out;              %%��άͼ
            cfar_result_z(1,3*(i-1)+1)=cfar_out;    %%����
            cfar_result_z(1,3*(i-1)+2)=i;     %%����
            cfar_result_z(1,3*(i-1)+3)=j;        %%�ٶ�
        end
    end
end
figure(9),subplot(9,1,1),plot(cfar_result_z(1:3:end));title('CFAR���Ƚ��');
subplot(9,1,2),plot(cfar_result_z(2:3:end));title('CFAR������');
subplot(9,1,3),plot(cfar_result_z(3:3:end));title('CFAR�ٶȽ��');
figure(10),mesh(abs(cfar_result));
grid on;xlabel('���뵥Ԫ');ylabel('ͨ����');zlabel(' ����');title('CFAR���');

 