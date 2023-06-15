% Simulation of coin flipping and die tossing.

% simulate flip of a coin. Possible results: 0, 1
coin_flip = round(rand(1));

% simulate toss of one die. Possible results: 1, 2, 3, 4, 5, 6
die_toss = ceil(6*rand(1));
% use random integer
die_toss_1= randi([1,6],1);

% simulate toss of two dice. Possible results: 1, 2, 3, 4, 5, 6
dice_toss = ceil(6*rand(1,2));


