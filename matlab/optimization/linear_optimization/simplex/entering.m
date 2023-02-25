
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                 _____ _   _ _____ _____ ____  ___ _   _  ____ 
%                | ____| \ | |_   _| ____|  _ \|_ _| \ | |/ ___|
%                |  _| |  \| | | | |  _| | |_) || ||  \| | |  _ 
%                | |___| |\  | | | | |___|  _ < | || |\  | |_| |
%                |_____|_| \_| |_| |_____|_| \_\___|_| \_|\____|
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function enter_VAR = entering(tableau_IN, constraints_matrix)
    % find most negative coefficient
    constraints_number = size(constraints_matrix,1);
    value = min(tableau_IN(end,1:3));
    if value < 0
        value = min(tableau_IN(end,1:3));
    else
        value = min(tableau_IN(end,:));
    end
    % find all indices with value of entering variable in tableau
    linear_indices = find(tableau_IN == value);
    [row, col] = ind2sub(size(tableau_IN), linear_indices);
    % take the indices first row,col entries in case of duplicates
    idx_temp = find(row == (size(tableau_IN,1)));
    idx_temp = idx_temp(1);
    % find row,col indices of tableau for entering variable
    row_idx_temp = row(idx_temp);
    col_idx_temp = col(idx_temp);
    % store in output
    enter_VAR.value = value;
    enter_VAR.row = row_idx_temp;
    enter_VAR.column = col_idx_temp;
end