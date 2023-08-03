/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-17/problem

Question:
Query the Western Longitude (LONG_W) where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.

Solution in MySQL.
*/

SELECT ROUND(s1.LONG_W, 4) AS round_long_w
FROM STATION s1
WHERE s1.LAT_N =
    (SELECT MIN(s2.LAT_N) AS min_lat_n
    FROM STATION s2
    WHERE s2.LAT_N > 38.7780);