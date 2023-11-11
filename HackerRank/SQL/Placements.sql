/*
Link: https://www.hackerrank.com/challenges/placements/problem

Question:
You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month). Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.

Solution in MySQL.
*/

SELECT self.self_name
FROM (
    SELECT f.ID AS self_id, s.Name AS self_name, p.Salary AS self_salary, f.Friend_ID AS friend_id
    FROM Friends AS f
    INNER JOIN Students AS s ON f.ID = s.ID
    INNER JOIN Packages AS p ON f.ID = p.ID
) AS self
INNER JOIN 
(
    SELECT s.Name AS friend_name, p.Salary AS friend_salary, f.Friend_ID AS friend_id
    FROM Friends AS f
    INNER JOIN Students AS s ON f.Friend_ID = s.ID
    INNER JOIN Packages AS p ON f.Friend_ID = p.ID
) AS friend
ON self.friend_id = friend.friend_id
WHERE self.self_salary < friend.friend_salary
ORDER BY friend_salary ASC;