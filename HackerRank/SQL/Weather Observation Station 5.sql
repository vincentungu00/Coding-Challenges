/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-5/problem

Question:
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

Solution in MySQL.
*/

WITH temp_table AS (
    SELECT s.CITY, ROW_NUMBER() OVER(ORDER BY LENGTH(s.CITY) ASC, s.CITY ASC) AS min, ROW_NUMBER() OVER(ORDER BY LENGTH(s.CITY) DESC, s.CITY ASC) AS max
    FROM STATION AS s
)
SELECT t.city, LENGTH(t.city) AS city_length
FROM temp_table AS t
WHERE min = 1 OR max = 1
ORDER BY 2;