-- Table: Employee
-- Each row of this table contains information about the salary of an employee.
-- Write a solution to find the second highest distinct salary from the Employee table.
-- If there is no second highest salary, return null 
SELECT MAX(salary) as SecondHighestSalary FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);
