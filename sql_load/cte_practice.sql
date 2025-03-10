/*
Find the count of the number if remote job postings per skill
- Display the top 5 skills by their demand in remote jobs
- include skill ID, name, and count of postings requiring the sill
*/

SELECT 
job_postings.job_id,
skill_id,
job_postings.job_work_from_home
FROM skills_job_dim AS skills_to_job
INNER JOIN job_postings_fact AS job_postings ON job_postings.job_id = skills_to_job.job_id

