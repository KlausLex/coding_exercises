function output = findOptimalSolution(tableau)
    [m,n] = size(tableau);
    output = "";
    for i = 1:n-1
        if tableau(m,i) == 0
            output = output + sprintf("x%d = %f, ",i,tableau(find(tableau(1:m-1,i) == 1),n));
        else
            output = output + sprintf("x%d = 0, ", i);
        end
    end

    disp("=====================================================================================================================")
    disp("F I N A L  T A B L E A U:")
    disp(" ")
    disp(tableau)
    disp("=====================================================================================================================")
    output = sprintf("S O L U T I O N:   ") + output + sprintf("Optimal value = %f",tableau(m,n));
    disp(output);
    disp("=====================================================================================================================")
end