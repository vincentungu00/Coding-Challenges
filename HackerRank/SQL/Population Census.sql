/*
Link: https://www.hackerrank.com/challenges/asian-population/problem

Question:
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Solution in MySQL.
*/

SELECT SUM(c.POPULATION) AS asia_populations
FROM CITY AS c
INNER JOIN COUNTRY AS cou
ON c.CountryCode = cou.Code
WHERE LOWER(TRIM(cou.CONTINENT)) = "asia"
;