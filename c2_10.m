%  Simulation code for dice tossing experiment.

% number of times to toss the dice.
n=1000; 

% Toss first die n times.
die1=ceil(6*rand(1,n)); 
% Toss second die n times.
die2=ceil(6*rand(1,n)); 

% Compute sum of two tosses.
dice_sum=die1+die2; 

% Count number of times sum = 5, using conditional sum;
% In MATLAB, the index of a matrix should be in this form: matrix([rows, columns])
nA=sum(dice_sum==5); 

%using loop
nA1=0;
for k=1:n
    if dice_sum(k)==5
        % for 1-by-n matrix's index, you can use dice_sum(k), dice_sum([k]),
        % and dice_sum([,k]). But dice_sum([1,k]) may be unstable sometimes.
        % That is really weird.
        nA1=nA1+1;
    else
    end
end


% Display relative frequency.
pA=nA/n;



