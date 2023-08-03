/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-16/problem

Question:
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.

Solution in MySQL.
*/

SELECT ROUND(MIN(s.LAT_N),4) AS min_lat_n
FROM STATION AS s
WHERE s.LAT_N > 38.7780;