/*
Link: https://www.hackerrank.com/challenges/placements/problem

Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:
Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

Solution in MySQL.
*/

SELECT CASE WHEN t.A = t.B AND t.A = t.C AND t.B = t.C AND t.A + t.B > t.C THEN "Equilateral"
    WHEN (t.A = t.B OR t.A = t.C OR t.B = t.C) AND t.A + t.B > t.C THEN "Isosceles"
    WHEN t.A != t.B AND t.A != t.C AND t.B != t.C AND t.A + t.B > t.C THEN "Scalene"
    ELSE "Not A Triangle" END AS triangle_type
FROM TRIANGLES AS t;