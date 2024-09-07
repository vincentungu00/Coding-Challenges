/*
Link: https://datalemur.com/questions/rolling-average-tweets

Question:
Given a table of tweet data over a specified time period, calculate the 3-day rolling average of tweets for each user. Output the user ID, tweet date, and rolling averages rounded to 2 decimal places.

Solution in PostgreSQL.
*/

SELECT user_id
  , tweet_date
  , ROUND(AVG(tweet_count) OVER (PARTITION BY user_id ORDER BY
tweet_date ASC RANGE BETWEEN INTERVAL '2' DAY PRECEDING AND CURRENT ROW), 2) AS round 
FROM tweets
ORDER BY user_id
;