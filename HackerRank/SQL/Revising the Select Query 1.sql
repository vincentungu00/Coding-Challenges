/*
Link: https://www.hackerrank.com/challenges/revising-the-select-query/problem

Question:
Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

Solution in MySQL.
*/

SELECT c.*
FROM CITY AS c
WHERE c.POPULATION > 100000 AND c.COUNTRYCODE = "USA";