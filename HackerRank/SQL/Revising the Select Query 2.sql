/*
Link: https://www.hackerrank.com/challenges/revising-the-select-query-2/problem

Question:
Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

Solution in MySQL.
*/

SELECT c.NAME
FROM CITY AS c
WHERE c.POPULATION > 120000 AND c.COUNTRYCODE = "USA";