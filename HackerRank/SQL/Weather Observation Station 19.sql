/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-19/problem

Question:
Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.
*/

WITH points AS (
    SELECT MIN(s.LAT_N) AS a, MIN(s.LONG_W) AS b,
    MAX(s.LAT_N) AS c, MAX(s.LONG_W) AS d
    FROM STATION AS s
)
SELECT ROUND(SQRT(POWER(p.c - p.a, 2) + POWER(p.d - p.b, 2)), 4) AS manhattan_distance
FROM points AS p;