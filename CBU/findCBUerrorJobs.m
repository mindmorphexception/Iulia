function findCBUerrorJobs()

    folder = '/imaging/sc03/.cbu-cluster/matlab-jobs_r2012a_onwards/';
    
    d = dir(folder);
    
    for i = 1:length(d)
        if (~(d(i).isdir)) || strcmp(d(i).name,'.') || strcmp(d(i).name,'..')
            continue;
        end
        
        load([folder d(i).name '/Task1.out.mat']);
        
        if ~isempty(errormessage)
            fprintf('At %s: %s\n\n', d(i).name, errormessage);
        end
    end
    
end

