/*
Link: https://www.hackerrank.com/challenges/average-population/problem

Question:
Query the average population for all cities in CITY, rounded down to the nearest integer.

Solution in MySQL.
*/

SELECT ROUND(AVG(c.Population), 0) AS average_population
FROM CITY AS c
;