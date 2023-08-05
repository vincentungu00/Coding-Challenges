/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-20/problem

Question:
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

Solution in MySQL.
*/

WITH data AS (
    SELECT s.LAT_N, ROW_NUMBER() OVER(ORDER BY s.LAT_N ASC) AS row_num
    FROM STATION AS s
), median_index AS (
    SELECT FLOOR(MAX(row_num+1) / 2) AS lower_bound, CEIL(MAX(row_num+1) / 2) AS upper_bound
    FROM data
)
    SELECT IF(mi.lower_bound = mi.upper_bound, ROUND(SUM(d.LAT_N), 4), ROUND(SUM(d.LAT_N) / 2, 4)) AS median 
    FROM data AS d, median_index AS mi
    WHERE d.row_num = lower_bound OR d.row_num = upper_bound
    GROUP BY mi.lower_bound, mi.upper_bound;