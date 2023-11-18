/*
Link: https://www.hackerrank.com/challenges/the-company/problem

Question:
Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Solution in MySQL.
*/

SELECT c.company_code, c.founder, 
    COUNT(DISTINCT lm.lead_manager_code) AS lead_manager, 
    COUNT(DISTINCT sm.senior_manager_code) AS senior_manager, 
    COUNT(DISTINCT m.manager_code) AS manager, 
    COUNT(DISTINCT e.employee_code) AS employee
FROM Company AS c
INNER JOIN Lead_Manager AS lm
ON c.company_code = lm.company_code
INNER JOIN Senior_Manager AS sm
ON lm.company_code = sm.company_code AND lm.lead_manager_code = sm.lead_manager_code
INNER JOIN Manager AS m
ON sm.company_code = m.company_code AND sm.lead_manager_code = m.lead_manager_code AND sm.senior_manager_code = m.senior_manager_code
INNER JOIN Employee AS e
ON m.company_code = e.company_code AND m.lead_manager_code = e.lead_manager_code AND m.senior_manager_code = e.senior_manager_code AND m.manager_code = e.manager_code
GROUP BY 1,2
ORDER BY 1 ASC;