/*
Link: https://datalemur.com/questions/second-day-confirmation

Question:
Assume you're given tables with information about TikTok user sign-ups and confirmations through email and text. New users on TikTok sign up using their email addresses, and upon sign-up, each user receives a text message confirmation to activate their account.

Write a query to display the user IDs of those who did not confirm their sign-up on the first day, but confirmed on the second day.

Solution in PostgreSQL.
*/

SELECT DISTINCT e.user_id
FROM emails AS e 
INNER JOIN texts AS t
ON e.email_id = t.email_id
WHERE t.signup_action = 'Confirmed'
AND EXTRACT(DAY FROM t.action_date - e.signup_date) = 1
;