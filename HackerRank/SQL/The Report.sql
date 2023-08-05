/*
Link: https://www.hackerrank.com/challenges/the-report/problem

Question:
You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.

Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.

Solution in MySQL.
*/

WITH students_grade AS (
SELECT s.Name, s.Marks, 
    CASE WHEN s.Marks BETWEEN 0 AND 9 THEN 1
    WHEN s.Marks BETWEEN 10 AND 19 THEN 2
    WHEN s.Marks BETWEEN 20 AND 29 THEN 3
    WHEN s.Marks BETWEEN 30 AND 39 THEN 4
    WHEN s.Marks BETWEEN 40 AND 49 THEN 5
    WHEN s.Marks BETWEEN 50 AND 59 THEN 6
    WHEN s.Marks BETWEEN 60 AND 69 THEN 7
    WHEN s.Marks BETWEEN 70 AND 79 THEN 8
    WHEN s.Marks BETWEEN 80 AND 89 THEN 9
    ELSE 10 
    END AS Grade
FROM Students AS s
)
SELECT IF(sg.Grade >= 8, sg.Name, NULL) AS Name, sg.Grade, sg.Marks 
FROM students_grade AS sg
ORDER BY 2 DESC, 1 ASC;