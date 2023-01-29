function solution = simplexLPP(objective_function, constraints_matrix, inequality_vector)

    tableau_fcn = @tableau;
    entering_fcn = @entering;
    departing_fcn = @departing;
    pivoting_fcn = @pivoting;
    solution_fcn = @findOptimalSolution;

    tableau = tableau_fcn(objective_function, constraints_matrix, inequality_vector);

    while (min(tableau(end,:)) < 0)
        enter_VAR = entering_fcn(tableau, constraints_matrix);
        depart_VAR = departing_fcn(tableau,enter_VAR);
        tableau = pivoting_fcn(tableau, enter_VAR, depart_VAR);
    end

    solution = solution_fcn(tableau, constraints_matrix);
    
    
end