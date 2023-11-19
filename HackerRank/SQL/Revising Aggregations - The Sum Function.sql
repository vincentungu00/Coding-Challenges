/*
Link: https://www.hackerrank.com/challenges/revising-aggregations-sum/problem

Question:
Query the total population of all cities in CITY where District is California.

Solution in MySQL.
*/

SELECT SUM(c.Population) AS total_population
FROM CITY AS c
WHERE LOWER(TRIM(c.District)) = "california"
;