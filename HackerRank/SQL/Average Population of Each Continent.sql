/*
Link: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

Question:
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Solution in MySQL.
*/

SELECT cou.CONTINENT AS continent, FLOOR(AVG(c.POPULATION)) AS avg_populations
FROM CITY AS c
INNER JOIN COUNTRY AS cou
ON c.CountryCode = cou.Code
GROUP BY 1
;