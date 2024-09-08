/*
Link: https://datalemur.com/questions/sql-ibm-db2-product-analytics

Question:
IBM is analyzing how their employees are utilizing the Db2 database by tracking the SQL queries executed by their employees. The objective is to generate data to populate a histogram that shows the number of unique queries run by employees during the third quarter of 2023 (July to September). Additionally, it should count the number of employees who did not run any queries during this period.

Display the number of unique queries as histogram categories, along with the count of employees who executed that number of unique queries.

Solution in PostgreSQL.
*/

SELECT CASE WHEN q.queries_cnt IS NULL THEN 0 ELSE q.queries_cnt END AS unique_queries, COUNT(DISTINCT e.employee_id) AS employee_count 
FROM employees AS e
LEFT JOIN (SELECT DISTINCT employee_id, COUNT(DISTINCT query_id) AS queries_cnt
          FROM queries 
          WHERE EXTRACT(YEAR FROM query_starttime) = '2023'
          AND EXTRACT(MONTH FROM query_starttime) BETWEEN '7' AND '9'
          GROUP BY 1
) AS q ON e.employee_id = q.employee_id
GROUP BY 1
ORDER BY 1
;