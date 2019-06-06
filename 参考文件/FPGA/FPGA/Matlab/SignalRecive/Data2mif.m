% Data2mif(Data,'filename',Bit)
% Save Data to file in .mif with DEC format
% For example:
% N = 100;
% Bit = 12, Bmx = 2^(B-1)-1;  
% t = linspace(0,1,N);
% s = sin(2*pi*t);
% s = round(Bmx*s);
% for k = 1:Ns;
%     if(ss(k)<0) ss(k) = ss(k) + 2*(Bmx + 1);end;
% end;
% Data2mif(s,'s.mif',Bit);

function Data2mif(Data,filename,Bit)

plot(Data)

    Depth = length(Data);
    fb = fopen(filename,'w');
    fprintf(fb,'WIDTH = %d;\n',Bit);
    fprintf(fb,'DEPTH = %d;\n',Depth);
    fprintf(fb,'ADDRESS_RADIX = UNS;\n');
    fprintf(fb,'DATA_RADIX = DEC;\n');
    fprintf(fb,'CONTENT BEGIN\n');
    for i = 1:Depth
        fprintf(fb,'%d  :  %d; \n',(i-1),Data(i));
    end
    fprintf(fb,'END;');
    fclose(fb);
end


