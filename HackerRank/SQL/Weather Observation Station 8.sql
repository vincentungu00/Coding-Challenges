/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-8/problem

Question:
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Solution in MySQL.
*/

SELECT DISTINCT s.CITY
FROM STATION AS s
WHERE LEFT(LOWER(s.CITY), 1) IN ("a", "e", "i", "o", "u") 
AND RIGHT(LOWER(s.CITY), 1) IN ("a", "e", "i", "o", "u");