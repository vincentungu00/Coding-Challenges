/*
Link: https://datalemur.com/questions/signup-confirmation-rate

Question:
New TikTok users sign up with their emails. They confirmed their signup by replying to the text confirmation to activate their accounts. Users may receive multiple text messages for account confirmation until they have confirmed their new account.

A senior analyst is interested to know the activation rate of specified users in the emails table. Write a query to find the activation rate. Round the percentage to 2 decimal places.

Solution in PostgreSQL.
*/

SELECT ROUND(COUNT(DISTINCT CASE WHEN UPPER(t.signup_action) = 'CONFIRMED' 
                              THEN e.user_id END) * 1.00 
            / COUNT(DISTINCT e.user_id), 2) AS confirm_rate
FROM emails AS e 
LEFT JOIN texts AS t ON e.email_id = t.email_id
;
