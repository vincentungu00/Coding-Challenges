/*
Link: https://www.hackerrank.com/challenges/binary-search-tree-1/problem

Question:
You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N. 

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:
Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.

Solution in MySQL.
*/

WITH inner_nodes AS (
    SELECT DISTINCT b.P, "Inner" AS flag
    FROM BST AS b
)
, root_and_nodes AS (
    SELECT DISTINCT b.N, IF(b.P IS NULL, "Root", "Leaf") AS flag
    FROM BST AS b
)
SELECT a.N, IF(a.flag = "Leaf" AND b.flag = "Inner", "Inner", a.flag)
FROM root_and_nodes AS a
LEFT JOIN inner_nodes AS b 
ON a.N = b.P
ORDER BY 1;