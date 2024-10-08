/*
Link: https://datalemur.com/questions/sql-average-post-hiatus-1

Question:
Given a table of Facebook posts, for each user who posted at least twice in 2021, write a query to find the number of days between each user’s first post of the year and last post of the year in the year 2021. Output the user and number of the days between each user's first and last post.

Solution in PostgreSQL.
*/

SELECT user_id
    , EXTRACT(DAY FROM MAX(post_date) - MIN(post_date)) AS days_between
FROM posts
GROUP BY 1
HAVING COUNT(DISTINCT CASE WHEN EXTRACT(YEAR FROM post_date) = 2021 THEN post_id END) >= 2
ORDER BY 1
;