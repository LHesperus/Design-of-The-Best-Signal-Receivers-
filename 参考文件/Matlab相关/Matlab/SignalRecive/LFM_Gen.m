% Creat LFM Signal with the input parameters
% s = LFM_Gen(t,B,T);
% s = LFM_Gen(t,B,T,f0);
% LFM_Gen(t,B,T) return a Baseband Complex LFM signal with bandwidth B, 
% impulse width T by time t, where t should start from zero .
% LFM_Gen(t,B,T,f0) return a Midband Real LFM signal with bandwidth B, 
% impulse width T ,center frequency f0 by time t.
% where f0 must be greater than B.
%
% PS: TB_Product B*T must be greater than 5.

function s = LFM_Gen(t,B,T,f0)
    TB_Product = B*T;
    if(TB_Product < 5 )
        fprintf('**** Time Bandwidth product is TOO SMALL ****');
        fprintf('\n B or T should be set more greater ****');
        return;
    end
    K = B/T;
    if nargin == 4
        if f0 < B     
            fprintf('**** f0 should be set more greater ****');
            return;   
        end;
        %产生实LFM信号
        s = (t<T).*cos(2*pi*((f0 - B/2)*t + (K*t.^2)/2));   
    end;    
    
    if nargin < 4
        f0 = 0;
        %产生复LFM信号
        s = (t<T).*exp(1j*2*pi*((f0 - B/2)*t + (K*t.^2)/2)); 
    end;
end