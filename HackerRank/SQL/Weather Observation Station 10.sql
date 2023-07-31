/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-10/problem

Question:
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

Solution in MySQL.
*/

SELECT DISTINCT s.CITY
FROM STATION AS s
WHERE RIGHT(LOWER(s.CITY), 1) NOT IN ("a", "e", "i", "o", "u");