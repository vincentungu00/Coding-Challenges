/*
Link: https://datalemur.com/questions/click-through-rate

Question:
Assume you have an events table on Facebook app analytics. Write a query to calculate the click-through rate (CTR) for the app in 2022 and round the results to 2 decimal places.

Solution in PostgreSQL.
*/

SELECT app_id
  , ROUND(COUNT(DISTINCT CASE WHEN UPPER(event_type) = 'CLICK' THEN timestamp END) * 100.00 
   / COUNT(DISTINCT CASE WHEN UPPER(event_type) = 'IMPRESSION' THEN timestamp END), 2) AS ctr
FROM events
WHERE EXTRACT(YEAR FROM timestamp) = '2022'
GROUP BY 1
;