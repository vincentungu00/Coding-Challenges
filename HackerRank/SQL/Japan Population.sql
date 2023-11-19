/*
Link: https://www.hackerrank.com/challenges/japan-population/problem

Question:
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

Solution in MySQL.
*/

SELECT SUM(c.POPULATION) AS sum_populations
FROM CITY AS c
WHERE UPPER(TRIM(c.COUNTRYCODE)) = "JPN"
;