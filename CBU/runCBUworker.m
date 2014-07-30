clear
clc
j = 0;
jobnrs = [3 4 5 7 8 9 11 13 15 16 17 18 19 22 23 24 25 26 27 28 29 30];

LoadFolderNames;
for i = 1:length(jobnrs)

    j = j+1;
    jobs(j).task=str2func('ComputeCrossSpectra'); % create a function handle for the current task
    jobs(j).n_return_values=0;
    jobs(j).input_args = {jobnrs(i)};
    
end

mypaths = { '/home/sc03/Iulia/Iulia', ...
     '/home/sc03/Iulia/Srivas', ...
     '/home/sc03/Iulia/Srivas/Overnight', ...
     '/home/sc03/Iulia/Srivas/connectivity', ...
     '/home/sc03/Iulia/Srivas/preprocessing', ...
     '/home/sc03/Iulia/fieldtrip/external/egi_mff/java', ...
     '/home/sc03/Iulia/fieldtrip/utilities', ...
     '/home/sc03/Iulia/fieldtrip', ...
     '/home/sc03/Iulia/BCT', ...
     '/home/sc03/Iulia/eeglab/plugins/MFFimport1.00', ...
     '/home/sc03/Iulia/eeglab'};

clear scheduler;
scheduler=cbu_scheduler('custom',{'compute',4,92,18000});

cbu_qsub(jobs,scheduler,mypaths);



