/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-6/problem

Question:
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Solution in MySQL.
*/

SELECT DISTINCT s.CITY
FROM STATION AS s
WHERE LEFT(LOWER(s.CITY), 1) IN ("a", "e", "i", "o", "u");