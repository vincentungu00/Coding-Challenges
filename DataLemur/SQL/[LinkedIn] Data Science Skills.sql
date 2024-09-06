/*
Link: https://datalemur.com/questions/matching-skills

Question:
Given a table of candidates and their skills, you're tasked with finding the candidates best suited for an open Data Science job. You want to find candidates who are proficient in Python, Tableau, and PostgreSQL.

Write a query to list the candidates who possess all of the required skills for the job. Sort the output by candidate ID in ascending order.

Solution in PostgreSQL.
*/

SELECT DISTINCT candidates.candidate_id
FROM candidates
INNER JOIN (SELECT 'PYTHON' AS skill 
            UNION ALL 
            SELECT 'TABLEAU' AS skill 
            UNION ALL 
            SELECT 'POSTGRESQL' AS skill) AS required
ON UPPER(candidates.skill) = required.skill
GROUP BY 1
HAVING COUNT(DISTINCT candidates.skill) = 3
;