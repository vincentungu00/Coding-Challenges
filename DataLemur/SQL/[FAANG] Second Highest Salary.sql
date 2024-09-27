/* 
Link: https://datalemur.com/questions/sql-second-highest-salary

Question:
Imagine you're an HR analyst at a tech company tasked with analyzing employee salaries. Your manager is keen on understanding the pay distribution and asks you to determine the second highest salary among all employees.

It's possible that multiple employees may share the same second highest salary. In case of duplicate, display the salary only once.

Solution in PostgreSQL.
*/

SELECT DISTINCT salary
FROM (
  SELECT salary, ROW_NUMBER() OVER(ORDER BY salary DESC) AS salary_ranking
  FROM employee
) AS salary_ranks
WHERE salary_ranking = 2
;