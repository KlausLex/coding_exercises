### main <br>
includes different exercises to test the simplex algorithm against

### entering <br>
searches for the least positive coefficient in the objective function <br>

### departing <br>
searches for the smallest ratio of the right-hand side of the constraints and the column of the entering variable

### pivoting <br>
starts pivoting and row operations using row & column from the pivot element found in entering & departing

### findOptimalSolution <br>
prints solution to command window and outputs all variables and the optimum value as a 1xN vector

### simplexLPP <br>
performs simplex algorithm by calling external functions as function handles:
* entering
* departing
* pivot
* findOptimalSolution
