/*
Link: https://www.hackerrank.com/challenges/salary-of-employees/problem

Question:
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.

Solution in MySQL.
*/

SELECT e.name
FROM Employee AS e
WHERE e.salary > 2000 AND e.months < 10
ORDER BY e.employee_id ASC
;