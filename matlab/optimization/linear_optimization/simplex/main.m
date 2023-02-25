clear
clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        __  __    _    ___ _   _ 
%                       |  \/  |  / \  |_ _| \ | |
%                       | |\/| | / _ \  | ||  \| |
%                       | |  | |/ ___ \ | || |\  |
%                       |_|  |_/_/   \_\___|_| \_|
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% S I M P L E X  -  E X E R C I S E S
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Exercise 01
objective = [4, 6]; % z = 4x1 + 6x2
constraints = [-1, 1, 11; 1, 1, 27; 2, 5, 90];
inequality = [1,1,1];
% Computation
solution = simplexLPP(objective, constraints, inequality)
clear
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SOLUTION: x1 = 15, x2 = 12, x3 = 14, x4 = 0, x5 = 0, Optimal value = 132
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Exercise 02
objective = [2, -1, +2]; % z = 2x1 -x2 +2x3
constraints = [2, 1, 0, 10; 1, 2, -2, 20; 0, 1, 2, 5];
inequality = [1,1,1];
% Computation
solution = simplexLPP(objective, constraints, inequality)
clear
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SOLUTION: x1 = 5, x2 = 0, x3 = 2.5, x4 = 0, x5 = 20, x6 = 0, Optimal value = 15
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Exercise 03
objective = [11, 16, 15]; % P = 11x1 +16x2 +15x3
constraints = [1, 2, 2/3, 12000; 2/3, 2/3, 1, 4600; 1/2, 1/3, 1/2, 2400];
inequality = [1,1,1];
% Computation
solution = simplexLPP(objective, constraints, inequality)
clear
% S O L U T I O N:   x1 = 0, x2 = 5742.857143, x3 = 771.428571, x4 = 0, x5 = 0, x6 = 100.000000, Optimal value = 103457.142857
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Exercise 04
objective = [3, 4, 1, 7]; % Z = 3x1 +4x2 +x3 + 7x4
constraints = [8, 3, 4, 1, 7; 2, 6, 1, 5, 3; 1, 4, 5, 2, 8];
inequality = [1,1,1];
% Computation
solution = simplexLPP(objective, constraints, inequality)
clear
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SOLUTION: x1 = 0.842105, x2 = 0, x3 = 0, x4 = 0.263158, x5 = 0, x6 = 0, x7 = 6.631579, Optimal value = 4.368421
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Exercise 05
objective = [1, 1, 2];  % z = x1 +x2 +2x3
constraints = [2, 1, 1, 50; 2, 1, 0, 36; 1, 0, 1, 10];
inequality = [1,-1,-1];
% Computation
solution = simplexLPP(objective, constraints, inequality)
clear
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SOLUTION: x1 = 0, x2 = 36, x3 = 14, x4 = 0, x5 = 0, x6 = 4, Optimal value = 64
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Exercise 06
objective = [3, 2, 4];  % z = 3x1 +2x2 +4x3
constraints = [3, 2, 5, 18; 4, 2, 3, 16; 2, 1, 1, 4];
inequality = [-1,-1,1];
% Computation
solution = simplexLPP(objective, constraints, inequality)
clear
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SOLUTION: x1 = 0, x2 = 0, x3 = 4, x4 = 2, x5 = , x6 = 0, Optimal value = 16
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% B R A N C H  %  B O U N D  -  E X E R C I S E S
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Exercise 01
objective = [5, 4];  % z = 5x1 + 4x2
constraints = [3, 2, 5; 2, 3, 7];
inequality = [1,1];
minMax = "min";
% Computation
solution = simplexLPP(objective, constraints, inequality)


integerSolution = branchAndBound(objective, constraints, solution, inequality, minMax);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% Exercise 02
objective = [-1, 4];  % z = 5x1 + 4x2
constraints = [-10, 20, 2; 5, 10, 49];
inequality = [1,1];
minMax = "min";
solution = simplexLPP(objective, constraints, inequality)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
integerSolution = branchAndBound(objective, constraints, solution, inequality, minMax);
