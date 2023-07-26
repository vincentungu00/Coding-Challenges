/*
Link: https://leetcode.com/problems/big-countries

Question:
A country is big if:
* it has an area of at least three million (i.e., 3000000 km2), or
* it has a population of at least twenty-five million (i.e., 25000000).
Find the name, population, and area of the big countries.

Solution in MySQL.
*/

SELECT w.name, w.population, w.area
FROM World AS w
WHERE w.area >= 3000000 OR w.population >= 25000000;