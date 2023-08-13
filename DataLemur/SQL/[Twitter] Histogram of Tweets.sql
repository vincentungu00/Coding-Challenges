/*
Link: https://datalemur.com/questions/sql-histogram-tweets

Question:
Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.

Solution in PostgreSQL.
*/

WITH cnt_per_tweet AS (
  SELECT t.user_id, COUNT(DISTINCT t.tweet_id) AS num_of_tweets
  FROM tweets AS t
  WHERE EXTRACT(YEAR FROM t.tweet_date) = 2022
  GROUP BY 1
)
SELECT cpt.num_of_tweets AS tweet_bucket, 
  COUNT(DISTINCT cpt.user_id) AS users_num
FROM cnt_per_tweet AS cpt
GROUP BY 1
ORDER BY 1;