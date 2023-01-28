
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  I N F O R M A T I O N
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Author: Klaus Lex
%   Course: POP700 - Manufacturing Optimization
%   Task:   Assignment 01 - Simplex Algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                 _____  _    ____  _     _____    _   _   _ 
%                |_   _|/ \  | __ )| |   | ____|  / \ | | | |
%                  | | / _ \ |  _ \| |   |  _|   / _ \| | | |
%                  | |/ ___ \| |_) | |___| |___ / ___ \ |_| |
%                  |_/_/   \_\____/|_____|_____/_/   \_\___/ 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function tableau_OUT = tableau(objective_function, constraints_matrix, constraints_inequality)
% TABLEAU Create tableau form inputs (objective_function, constraints_matrix, method_vector)
%   objective_function ... coefficient vector (e.g. z = 2*x1 - x2 + 2*x3 == [2, -1, +2])
%   constraints_matrix ... coefficient vector of size N
%   method_vector      ... -1*(1 x N) if constraints <= , +1*(1 x N) if constraints >= 

    constraints_number = size(constraints_matrix,1);
     
    length_objective = length(objective_function);
     
    % left-hand side (constraints)
    LHS = constraints_matrix(:,1:end-1);
    % right-hand side (constraints)
    RHS = constraints_matrix(:,end);
    % slack variables
    slack = eye(constraints_number) .* constraints_inequality;
    
    length_variables = size(LHS,2) + size(slack,2) + size(RHS,2);
    length_expansion = length_variables - length_objective;

    filling_zeros = zeros(1,length_expansion);

    objective_function = [- objective_function, filling_zeros];

    tableau_OUT = [LHS, slack, RHS; objective_function];
     
end