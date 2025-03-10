SELECT 
company_id,
job_no_degree_mention
FROM
job_postings_fact
WHERE
job_no_degree_mention = TRUE


-- query to check how many companies have no degree required mentioned 
SELECT 
company_id,
name AS company_name
FROM company_dim 
WHERE company_id IN (
    SELECT 
company_id
FROM
job_postings_fact
WHERE
job_no_degree_mention = TRUE
ORDER BY
company_id
)