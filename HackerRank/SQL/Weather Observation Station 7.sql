/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-7/problem

Question:
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Solution in MySQL.
*/

SELECT DISTINCT s.CITY
FROM STATION AS s
WHERE RIGHT(LOWER(s.CITY), 1) IN ("a", "e", "i", "o", "u");