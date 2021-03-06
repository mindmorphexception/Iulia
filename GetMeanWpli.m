function medwpli = GetMeanWpli(patientnr, nightnr, freq)
    % Returns a sequence of (mean wpli value at each epoch) throughout time.
    % Note parantheses mark word precedence for clearer understanding.
    % Iuli-grammar (c) 2015 ;-)

    wplimatrices = AggregateMaxFreqMatrix(patientnr, nightnr, freq); 
    nrEpochs = length(wplimatrices);
    medwpli = zeros(1,nrEpochs);

    for t = 1:nrEpochs
        medwpli(t) = median(triu2(wplimatrices{t}));
    end
    
end