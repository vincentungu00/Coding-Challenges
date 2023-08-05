/*
Link: https://www.hackerrank.com/challenges/earnings-of-employees/problem

Question:
We define an employee's total earnings to be their monthly salary x months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.
*/

SELECT top_earnings, COUNT(DISTINCT name) AS cnt_employee
FROM Employee AS emp, 
    (SELECT MAX(e.months * e.salary) AS top_earnings FROM Employee AS e) AS max_earnings
WHERE (emp.months * emp.salary) = top_earnings
GROUP BY 1;