/*
Link: https://www.hackerrank.com/challenges/african-cities/problem

Question:
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Solution in MySQL.
*/

SELECT DISTINCT c.NAME
FROM CITY AS c
INNER JOIN COUNTRY AS cou
ON c.CountryCode = cou.Code
WHERE LOWER(TRIM(cou.CONTINENT)) = "africa"
;