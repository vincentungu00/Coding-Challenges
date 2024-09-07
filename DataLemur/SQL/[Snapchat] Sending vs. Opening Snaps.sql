/*
Link: https://datalemur.com/questions/time-spent-snaps

Question:
Assume you're given tables with information on Snapchat users, including their ages and time spent sending and opening snaps.

Write a query to obtain a breakdown of the time spent sending vs. opening snaps as a percentage of total time spent on these activities grouped by age group. Round the percentage to 2 decimal places in the output.

Solution in PostgreSQL.
*/

SELECT age_bucket
  , ROUND(time_send * 100.00 / (time_send + time_open), 2) AS send_perc
  , ROUND(time_open * 100.00 / (time_send + time_open), 2) AS send_perc
FROM (
  SELECT ab.age_bucket
    , SUM(CASE WHEN UPPER(activity_type) = 'OPEN' THEN time_spent END) AS time_open
    , SUM(CASE WHEN UPPER(activity_type) = 'SEND' THEN time_spent END) AS time_send
  FROM age_breakdown AS ab 
  LEFT JOIN activities AS a
  ON ab.user_id = a.user_id
  GROUP BY 1
) time_spent
ORDER BY 1
;