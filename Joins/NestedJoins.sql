/*Table: Employee
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentId | int     |
+--------------+---------+
Table: Department
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+

Write a solution to find employees who have the highest salary in each of the departments.*/
SELECT d.name as Department,e.name as Employee,e.salary as Salary
FROM Employee e
JOIN Department d ON e.departmentId = d.id
WHERE e.salary IN (SELECT MAX(e.salary) as Salary
FROM Employee e
JOIN Department d1 ON e.departmentId = d.id
WHERE d1.name =d.name
GROUP BY d.name);
