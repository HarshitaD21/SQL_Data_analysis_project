/*
q: WHhat skills are required for the top- paying data analayst jobs?
- Use the top 10 highest paying da jobs fro the 1st query
- Add teh specific skills required for these roles.
- Why? It provides a detailed look at whihc high paying jobs demand certain skills,
helping job seekers understand which skills to develop that align with top salaries. */

/* we are solving this by CTE */

WITH top_paying_jobs AS (
SELECT
    job_id,
    job_title,
    salary_year_avg,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg desc
LIMIT 10
)

SELECT
    top_paying_jobs.*,  -- this selects everything to display from the above table 
    skills -- this comes from the skills dim table 
FROM 
    top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC

