/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-4/problem

Question:
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

Solution in MySQL.
*/

SELECT COUNT(s.CITY) - COUNT(DISTINCT s.CITY) AS difference
FROM STATION AS s;