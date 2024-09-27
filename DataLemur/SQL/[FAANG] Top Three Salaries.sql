/* 
Link: https://datalemur.com/questions/sql-top-three-salaries

Question:
As part of an ongoing analysis of salary distribution within the company, your manager has requested a report identifying high earners in each department. A 'high earner' within a department is defined as an employee with a salary ranking among the top three salaries within that department.

You're tasked with identifying these high earners across all departments. Write a query to display the employee's name along with their department name and salary. In case of duplicates, sort the results of department name in ascending order, then by salary in descending order. If multiple employees have the same salary, then order them alphabetically.

Note: Ensure to utilize the appropriate ranking window function to handle duplicate salaries effectively.

Solution in PostgreSQL.
*/

SELECT department_name, name, salary
FROM (
  SELECT d.department_name, name, salary, DENSE_RANK() OVER(PARTITION BY d.department_name ORDER BY salary DESC) AS salary_ranking
  FROM employee AS e 
  INNER JOIN department AS d ON e.department_id = d.department_id
) AS salary_ranks
WHERE salary_ranking <= 3
ORDER BY 1 ASC, 3 DESC, 2 ASC
;