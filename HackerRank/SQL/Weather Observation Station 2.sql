/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-2/problem

Question:
Query the following two values from the STATION table:
The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.

Solution in MySQL.
*/

SELECT ROUND(SUM(s.LAT_N), 2) AS lat, ROUND(SUM(s.LONG_W), 2) AS lon
FROM STATION AS s;