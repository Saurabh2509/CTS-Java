Author : Saurabh Kumar
@Copyright 2021

# Problem Title: Department name based on block number
# Problem Statement :Write a query to display the names of the departments in block number 3 in ascending order

Select * from Department 
where DEPARTMENT_BLOCK_NUMBER = 3;


# Problem Title: Students Name based on Start and Ending Character
# Problem Statement :Write a query to display the names of the students that start with letter 'A' and end with the letter 'a', ordered in ascending order.

Select * from Student
where Student_Name like 'A%a' 
ORDER BY Student_name ASC;

# Problem Title: Number of departments
# Problem Statement :Write a query to display the block number and number of departments in each block and give an alias as NO_OF_DEPT. Sort the result based on NO_OF_DEPT in descending.

Select DEPARTMENT_BLOCK_NUMBER ,Count(Department_ID) as NO_OF_DEPT from Department
Group By Department_Block_Number
Order By NO_OF_DEPT Desc;

