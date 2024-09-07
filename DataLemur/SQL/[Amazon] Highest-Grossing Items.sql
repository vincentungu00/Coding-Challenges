/*
Link: https://datalemur.com/questions/sql-highest-grossing

Question:
Assume you're given a table containing data on Amazon customers and their spending on products in different category, write a query to identify the top two highest-grossing products within each category in the year 2022. The output should include the category, product, and total spend.

Solution in PostgreSQL.
*/

SELECT category, product, total_spent
FROM (
  SELECT category, product, total_spent, DENSE_RANK() OVER(PARTITION BY category ORDER BY total_spent DESC) AS d_rank
  FROM (
    SELECT category, product, SUM(spend) AS total_spent
    FROM product_spend
    WHERE EXTRACT(YEAR FROM transaction_date) = '2022'
    GROUP BY 1, 2
  ) AS spent
) AS ranked_spent
WHERE d_rank <= 2
ORDER BY 1, 3 DESC
;