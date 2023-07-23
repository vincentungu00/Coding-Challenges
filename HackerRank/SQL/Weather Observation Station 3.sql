/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-3/problem

Question:
Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

Solution in MySQL.
*/

SELECT DISTINCT s.CITY
FROM STATION AS s
WHERE MOD(s.ID,2) = 0;