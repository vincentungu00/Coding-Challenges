/*
Link: https://www.hackerrank.com/challenges/japanese-cities-name/problem

Question:
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

Solution in MySQL.
*/

SELECT c.NAME
FROM CITY AS c
WHERE UPPER(TRIM(c.COUNTRYCODE)) = "JPN";