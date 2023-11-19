/*
Link: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem

Question:
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
* * * * * 
* * * * 
* * * 
* * 
*

Write a query to print the pattern P(20).

Solution in MySQL.
*/

DELIMITER $$
CREATE PROCEDURE triangle_1(number INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE outp VARCHAR(100);
    SET outp = "";
    SET i = number;
    WHILE i > 0 DO
        SET outp = REPEAT("* ", i);
        SELECT TRIM(outp);
        SET i = i - 1;
    END WHILE;
END $$
DELIMITER ;

CALL triangle_1(20);