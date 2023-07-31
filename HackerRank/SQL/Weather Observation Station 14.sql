/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-14/problem

Question:
Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.

Solution in MySQL.
*/

SELECT ROUND(MAX(s.LAT_N), 4) AS sum_lat_n
FROM STATION AS s
WHERE lat_n < 137.2345;