/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-13/problem

Question:
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.

Solution in MySQL.
*/

SELECT ROUND(SUM(s.LAT_N), 4) AS sum_lat_n
FROM STATION AS s
WHERE lat_n > 38.788 AND lat_n < 137.2345;