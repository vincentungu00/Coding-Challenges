/*
Link: https://datalemur.com/questions/teams-power-users

Question:
Write a query to identify the top 2 Power Users who sent the highest number of messages on Microsoft Teams in August 2022. Display the IDs of these 2 users along with the total number of messages they sent. Output the results in descending order based on the count of the messages.

Solution in PostgreSQL.
*/

SELECT sender_id, message_count 
FROM (
  SELECT sender_id
    , COUNT(DISTINCT message_id) AS message_count
    , DENSE_RANK() OVER(ORDER BY COUNT(DISTINCT message_id) DESC) AS ranking
  FROM messages
  WHERE EXTRACT(YEAR FROM sent_date) = '2022'
    AND EXTRACT(MONTH FROM sent_date) = '8'
  GROUP BY 1
) AS message
WHERE ranking <= 2
ORDER BY 2 DESC
;