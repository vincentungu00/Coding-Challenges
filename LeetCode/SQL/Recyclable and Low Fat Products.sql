/*
Link: https://leetcode.com/problems/recyclable-and-low-fat-products

Question:
Find the ids of products that are both low fat and recyclable. Return the result table in any order.

Solution in MySQL.
*/

SELECT p.product_id
FROM Products AS p
WHERE p.low_fats = "Y"
AND p.recyclable = "Y";