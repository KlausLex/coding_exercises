### main <br>
performs simplex in **computation section* by calling external functions:
* entering
* departing
* pivot
* findOptimalSolution

### entering <br>
searches for the least positive coefficient in the objective function <br>

### departing <br>
searches for the smallest ratio of the right-hand side of the constraints and the column of the entering variable

### pivot <br>
starts pivoting and row operations using row & column from the pivot element found in entering & departing

### findOptimalSolution <br>
prints solution to command window
