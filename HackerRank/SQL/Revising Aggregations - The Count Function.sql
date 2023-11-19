/*
Link: https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem

Question:
Query a count of the number of cities in CITY having a Population larger than 100000.

Solution in MySQL.
*/

SELECT COUNT(DISTINCT c.Name) AS cnt_cities
FROM CITY AS c
WHERE c.Population > 100000
;