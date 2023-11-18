/*
Link: https://www.hackerrank.com/challenges/challenges/problem

Question:
Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

Solution in MySQL.
*/

WITH hacker_data AS (
    SELECT hacker_id, name, COUNT(DISTINCT challenge_id) AS num_challenges_solved
    FROM Challenges
    INNER JOIN Hackers USING(hacker_id)
    GROUP BY 1, 2
)
, max_solved AS (
    SELECT MAX(num_challenges_solved) AS max_score
    FROM hacker_data
)
, scores_ranking AS (
    SELECT num_challenges_solved, COUNT(DISTINCT hacker_id) AS num_of_users, ROW_NUMBER() OVER(ORDER BY num_challenges_solved DESC) AS ranking
    FROM hacker_data
    GROUP BY 1
)
, exclude_scores AS (
    SELECT DISTINCT num_challenges_solved
    FROM scores_ranking, max_solved
    WHERE ranking > 1 AND num_of_users > 1
)
SELECT hd.*
FROM hacker_data AS hd
LEFT JOIN exclude_scores AS es
ON hd.num_challenges_solved = es.num_challenges_solved
WHERE es.num_challenges_solved IS NULL
ORDER BY 3 DESC
;