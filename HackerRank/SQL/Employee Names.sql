/*
Link: https://www.hackerrank.com/challenges/name-of-employees/problem

Question:
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Solution in MySQL.
*/

SELECT e.name
FROM Employee AS e
ORDER BY e.name ASC;