WITH user_txn_order AS (
  SELECT t.user_id, 
    t.spend, 
    t.transaction_date,
    ROW_NUMBER() OVER(PARTITION BY t.user_id ORDER BY t.transaction_date ASC) AS txn_order
  FROM transactions AS t
)
SELECT uto.user_id,
  uto.spend,
  uto.transaction_date
FROM user_txn_order AS uto
WHERE uto.txn_order = 3
ORDER BY 1
;