/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-15/problem

Question:
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.

Solution in MySQL.
*/

SELECT ROUND(s1.LONG_W, 4) AS round_long_w
FROM STATION s1
WHERE s1.LAT_N =
    (SELECT MAX(s2.LAT_N) AS max_lat_n
    FROM STATION s2
    WHERE s2.LAT_N < 137.2345);