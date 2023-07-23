/*
Link: https://datalemur.com/questions/tesla-unfinished-parts

Question:
Tesla is investigating production bottlenecks and they need your help to extract the relevant data. Write a query that determines which parts with the assembly steps have initiated the assembly process but remain unfinished.

Solution in PostgreSQL.
*/

SELECT pa.part, pa.assembly_step
FROM parts_assembly AS pa
WHERE pa.finish_date IS NULL;