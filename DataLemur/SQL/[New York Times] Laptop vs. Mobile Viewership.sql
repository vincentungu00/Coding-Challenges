/*
Link: https://datalemur.com/questions/laptop-mobile-viewership

Question:
Assume you're given the table on user viewership categorised by device type where the three types are laptop, tablet, and phone.

Write a query that calculates the total viewership for laptops and mobile devices where mobile is defined as the sum of tablet and phone viewership. Output the total viewership for laptops as laptop_reviews and the total viewership for mobile devices as mobile_views.

Solution in PostgreSQL.
*/

SELECT MAX(CASE WHEN device_type = 'LAPTOP' THEN views END) AS laptop_views
  , SUM(CASE WHEN device_type IN ('TABLET', 'PHONE') THEN views END) AS mobile_views
FROM (
  SELECT UPPER(device_type) AS device_type, COUNT(DISTINCT view_time) AS views
  FROM viewership
  GROUP BY 1
) AS device_views
;