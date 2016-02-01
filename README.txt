Sudoku Solver

How to run this program
To run the application simply run './sudoku'
The application will prompt for a Sudoku puzzle to be solved. You can find two examples of sudokus to be solved inside the test_sudokus folder.
When the application run it will create a solution file next to the file provided with the solution.

Questions
1. How does your algorithm work?
- My program solves a Sudoku puzzle using a backtrace algorithm. It iteratively assigns values to an empty cell and checks if those values could lead to a possible solution. With a possible value, the program continues to the next empty cell and repeats the process. If no value works then it goes back to the previous cell and looks for another possible value.

2. Give and explain the big-­O notation of the best, worst, and expected run-­time of your
program.
- The best run-time would be if the application does not have to backtrace in which case it would be O(n), n being the number of possible options for one cell. The worst run-time would be that it has to backtrace for everytime in which case it would be O(n ^ m), n being the number of options of one cell and m being the number of empty cells.

3. Why did you design your program the way you did?
- I decided to organize my solution in a composite pattern because I wanted to keep the concerns encapsulated into reusable objects. This way the program has one class that takes care of all the specific Sudoku logic with modules that could be easily reused for solving other similar problems.

4. What are some other decisions you could have made. How might they have been
better? How might they have been worse?
- I thought of building a solution using a database that was seeded with all of the possible solutions. I thought that using a DB, I would be able to build a solution that ran faster and the code would be much simpler. The problem with that approach is the need to seed the database, which would have required a script that could take long time to run and use a lot of memory.
