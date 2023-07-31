/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-11/problem

Question:
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Solution in MySQL.
*/

SELECT DISTINCT s.CITY
FROM STATION AS s
WHERE LEFT(LOWER(s.CITY), 1) NOT IN ("a", "e", "i", "o", "u") 
OR RIGHT(LOWER(s.CITY), 1) NOT IN ("a", "e", "i", "o", "u");