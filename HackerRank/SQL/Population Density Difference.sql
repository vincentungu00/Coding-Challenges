/*
Link: https://www.hackerrank.com/challenges/population-density-difference/problem

Question:
Query the difference between the maximum and minimum populations in CITY.

Solution in MySQL.
*/

SELECT MAX(c.Population) - MIN(c.Population) AS population_density_difference
FROM CITY AS c
;