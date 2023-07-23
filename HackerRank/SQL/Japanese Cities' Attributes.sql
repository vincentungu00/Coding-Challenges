/*
Link: https://www.hackerrank.com/challenges/japanese-cities-attributes/problem

Question:
Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

Solution in MySQL.
*/

SELECT c.*
FROM CITY AS c
WHERE UPPER(TRIM(c.COUNTRYCODE)) = "JPN";