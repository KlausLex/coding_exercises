
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  I N F O R M A T I O N
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Author: Klaus Lex
%   Course: POP700 - Manufacturing Optimization
%   Task:   Assignment 01 - Simplex Algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        ____ _____     _____ _____ 
%                       |  _ \_ _\ \   / / _ \_   _|
%                       | |_) | | \ \ / / | | || |  
%                       |  __/| |  \ V /| |_| || |  
%                       |_|  |___|  \_/  \___/ |_|  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function tableau_OUT = pivoting(tableau_IN, enter_VAR, depart_VAR)
    
    % find pivot element by row, column indices
    pivot_VAR = tableau_IN(depart_VAR.row, enter_VAR.column);
    % divide pivot row by pivot element
    tableau_IN(depart_VAR.row,:) = tableau_IN(depart_VAR.row,:) / pivot_VAR;
    % perform row operations to eliminate variables in equations
    for i = 1:size(tableau_IN,1)
        if i ~= depart_VAR.row
            tableau_IN(i,:) = tableau_IN(i,:) - tableau_IN(i,enter_VAR.column) * tableau_IN(depart_VAR.row,:);
        end
    end
    % updating the tableau
    tableau_OUT = tableau_IN;
    
    
end