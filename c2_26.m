% Simulation code to estimate PMF of Example 2.26.

% Number of coin flips per experiment.
n=10;
% Number of times to repeat experiment.
m=100;
% Simulate coin flipping.
X=round(rand(n,m));
% Calculate number of tails per experiment.
Y=sum(X);
% Compute relative frequencies.
Rel_Freq=hist(Y,0:n)/m;

% Compute actual PMF.
for k=0:n
    PMF(k+1)=nchoosek(n,k)*(2^(-n)); 
end

% Plot Results     
plot(0:n,Rel_Freq,'o',0:n,PMF,'*')
legend('Relative Frequency','True PMF')
xlabel('k')
ylabel('P_X(k)')
title('Comparison of estimated and true PMF for Example 2.26');