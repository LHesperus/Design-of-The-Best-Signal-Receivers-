% 1.	��MATLAB��C���Բ������ȷֲ�������������ڴ˻����ϲ�����ѡ���������ƽ��������ʱƽ�����
% �����任�����������������̬�ֲ����������ͨ��ͳ��ֱ��ͼ���鲢�ȽϷ�����
% �������ܶȺ����������ȽϷ��������ʱ�䡣
clear all;
% z0=3;
% z=[];
% M=1000;
% a=10;
% c=5;
% z(1)=2;
% for i=1:M-1
%     z(i+1)=mod(a*z(i)+c,M);
% end
% for i=1:M
%     z(i)=z(i)/M
% end
% % figure
% 
% 
% avg=sum(z)/M;
% s=0;
% for k=1:M
%     s=s+(z(k)-avg)^2;
% end
% std=(s/(M-1))^0.5;
% std;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M=1000;
z=rand(1,M);
NN=12;

sita=[];
sita_index=1;
for q=1:M-NN
    sum1=0;
    for k=1:NN
        sum1=sum1+z(q+k);
    end
    if(sum1>2&&sum1<10)
        sita(sita_index)=sum1;
        sita_index=sita_index+1;
    end
end
a=[3.949846,0.252409,0.076543,0.008356,0.029900];
y=(sita-6)./4
x=a(1)*y+a(2)*y.^3+a(3)*y.^5+a(4)*y.^7+a(5)*y.^9;
figure;
plot(x);




