clear
clc
varname = 'matrix_10hz';

files = {
    '1_p2_overnight1 20120525 1549',...
    '2_p2_overnight2 20120529 1754',... 
    '7_p3_overnight1 20120627 2003',...
    '8_p3_overnight2 20120702 1142',...
    '3_p5_overnight1 20120705 1814',...
    '4_p5_overnight2 20120711 1703',...
    '1_p10_overnight1 20120910 1813',...
    '2_p10_overnight2 20120912 1812',... 
    '5_p16_overnight1 20121121 1807',...
    '6_p16_overnight2 20121129 2019',...
    };

p = 1;
for i = 1:2:length(files)
    measures{p}.night1 = ComputeGraphMeasures(varname,files{i});
    measures{p}.night2 = ComputeGraphMeasures(varname,files{i+1});
    measures{p}.patient = files{p}(3:16);
    p = p+1;
end
