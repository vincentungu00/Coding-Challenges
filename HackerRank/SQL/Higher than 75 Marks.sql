/*
Link: https://www.hackerrank.com/challenges/more-than-75-marks/problem

Question:
Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Solution in MySQL.
*/

SELECT s.Name
FROM STUDENTS AS s
WHERE s.Marks > 75
ORDER BY RIGHT(s.Name, 3) ASC, s.ID ASC;