/*
Table: Customers

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+

Table: Orders
+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| customerId  | int  |
+-------------+------+

Write a solution to find all customers who never order anything. */

SELECT name as Customers from Customers c left JOIN Orders o
on c.id = o.customerId where o.id is NULL;
