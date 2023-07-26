/*
Link: https://leetcode.com/problems/find-customer-referee

Question:
Write an SQL query to report the names of the customer that are not referred by the customer with id = 2.

Solution in MySQL.
*/

SELECT c.name
FROM Customer AS c
WHERE IFNULL(c.referee_id, 0) != 2;