
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  I N F O R M A T I O N
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Author: Klaus Lex
%   Course: POP700 - Manufacturing Optimization
%   Task:   Assignment 01 - Simplex Algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%             ____  _____ ____   _    ____ _____ ___ _   _  ____ 
%            |  _ \| ____|  _ \ / \  |  _ \_   _|_ _| \ | |/ ___|
%            | | | |  _| | |_) / _ \ | |_) || |  | ||  \| | |  _ 
%            | |_| | |___|  __/ ___ \|  _ < | |  | || |\  | |_| |
%            |____/|_____|_| /_/   \_\_| \_\|_| |___|_| \_|\____|
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function depart_VAR = departing(tableau_IN, enter_VAR)
    % right-hand side
    RHS = tableau_IN(1:end-1,end);
    % entering-variable column
    EVC = tableau_IN(1:end-1,enter_VAR.column);
    % divide RHS by EVC
    RHSEVC = RHS ./ EVC;
    % find smallest coefficient
    value = min(RHSEVC(~isinf(RHSEVC) & RHSEVC > 0));
    % find RHS index for the departing variable
    row_idx_temp = find(RHSEVC == value);
    col_idx_temp = length(tableau_IN);
    
    % store in output
    depart_VAR.value = value;
    depart_VAR.row = row_idx_temp;
    depart_VAR.column = col_idx_temp;
end