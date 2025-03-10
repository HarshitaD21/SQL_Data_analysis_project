SELECT 
job_title_short,
job_location 
FROM job_postings_fact;

/*

Label new column as follows:
- 'Anywhere' jobs as 'Remote'
- 'New York' jobs as 'Local'
- Otherwise 'Onsite'

*/

SELECT 
COUNT(job_id) AS number_of_jobs,
CASE
    WHEN job_location = 'Anywhere' THEN 'Remote'
    WHEN job_location = 'New York, NY' THEN 'Local'
    ELSE 'Onsite'
END AS location_category
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY 
location_category;

SELECT *
FROM (  --- subquery start
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1
    )AS january_jobs;
    -- subquery end

SELECT *
FROM january_jobs;