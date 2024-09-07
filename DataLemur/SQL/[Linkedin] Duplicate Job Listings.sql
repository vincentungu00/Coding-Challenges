/*
Link: https://datalemur.com/questions/duplicate-job-listings

Question:
Assume you're given a table containing job postings from various companies on the LinkedIn platform. Write a query to retrieve the count of companies that have posted duplicate job listings.

Solution in PostgreSQL.
*/

SELECT COUNT(DISTINCT company_id) AS duplicate_companies
FROM (
  SELECT company_id, title
  FROM job_listings
  GROUP BY 1,2
  HAVING COUNT(DISTINCT job_id) > 1
) AS jobs
;