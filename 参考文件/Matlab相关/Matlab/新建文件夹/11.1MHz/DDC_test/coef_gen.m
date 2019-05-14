fid = fopen('F:\quartus_project\DDC_test\FIR.txt','w');
for i = 1 :length(FIR)
    fprintf(fid,'%d\n',FIR(i));
end
fclose(fid);