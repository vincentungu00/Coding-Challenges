/*
Link: https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem

Question:
Query the average population of all cities in CITY where District is California.

Solution in MySQL.
*/

SELECT AVG(c.Population) AS average_population
FROM CITY AS c
WHERE LOWER(TRIM(c.District)) = "california"
;