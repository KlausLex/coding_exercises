function output = branchAndBound(objective, constraints, solution, inequality, minMax)

    % A-matrix (LHS)
    A = constraints(:,1:end-1);
    % b-vector (RHS)
    b = constraints(:,end);
    % number of variables
    n = size(A,2);
    % variables
    VARs = solution(1:n);

    % INIT OUTPUT
    output = [];
    % NEW PAIR
    x1_lower = floor(VARs(1));
    x1_upper = ceil(VARs(1));

    x1_new = [x1_lower, x1_upper];
    x_matrix = [x1_new', ones(2,1)]
    
    for i = 1:size(x1_new,2)
        x_matrix(:,i)

        A_new(:,:,i) = A .* x_matrix(:,i)'

        x2_new = (b - A_new(:,1,i)) ./ A_new(:,2,i)

        
        %%%%%%%%%%%%%%%%%
        
        if inequality(1) == 1 && inequality(2) == 1
            x2 = max(x2_new)
        elseif inequality(1) == -1 && inequality(2) == -1
            x2 = min(x2_new)   
        end

        x2_lower = floor(x2)
        x2_upper = ceil(x2)
        x2_new
        
        if x2_lower < x2
            disp("LOWER")
            x2_lower = inf
        elseif x2_upper < x2
            disp("UPPER")
            x2_upper = inf
        end
        
        x2_new = [x2_lower, x2_upper]

        obj_lower = objective * [x1_new(i); x2_lower]
        obj_upper = objective * [x1_new(i); x2_upper]
        
        if isempty(output)
            output_temp = [x1_new(i), x2_lower, obj_lower; x1_new(i), x2_upper, obj_upper]
            
            rowsWithInf = any(isinf(output_temp),2);
            index = find(rowsWithInf);
            output_temp(index,:) = [];
            output = output_temp;
        else
            output_temp = [x1_new(1), x2_lower, obj_lower; x1_new(i), x2_upper, obj_upper]
            
            rowsWithInf = any(isinf(output_temp),2);
            index = find(rowsWithInf);
            output_temp(index,:) = [];
            output = [output; output_temp];
        end
    end
    % MIN MAX CHECK
    
    disp("MIN MAX CHECK")

    if strcmp(minMax, "min")
        [~, minIndex] = min(output(:,end));
    else
        [~, maxIndex] = max(output(:,end));
    end

    if strcmp(minMax, "min")
        output = output(minIndex,:);
    else
        output = output(maxIndex,:);
    end
    % PRINT SOLUTION TO COMMAND WINDOW
    disp("=====================================================================================================================")

    fprintf('S O L U T I O N: ')
    for i = 1:n-1
        fprintf('x%d = %d, ', i, output(i))
    end
    fprintf('x%d = %d, Optimal value = %d\n', n, output(n), output(end))
    disp("=====================================================================================================================")

end