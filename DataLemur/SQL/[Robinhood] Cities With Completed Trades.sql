/*
Link: https://datalemur.com/questions/completed-trades

Question:
Assume you're given the tables containing completed trade orders and user details in a Robinhood trading system.

Write a query to retrieve the top three cities that have the highest number of completed trade orders listed in descending order. Output the city name and the corresponding number of completed trade orders.

Solution in PostgreSQL.
*/

SELECT city
  , total_orders
FROM (
  SELECT u.city
    , COUNT(DISTINCT t.order_id) AS total_orders
    , DENSE_RANK() OVER(ORDER BY COUNT(DISTINCT t.order_id) DESC) AS ranking
  FROM trades AS t
  LEFT JOIN users AS u 
  ON t.user_id = u.user_id
  WHERE UPPER(t.status) = 'COMPLETED'
  GROUP BY 1
) AS orders
WHERE ranking <= 3
ORDER BY ranking ASC
;