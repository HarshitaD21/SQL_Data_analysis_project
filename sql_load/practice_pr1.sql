-- problem stmt--
/* create 3 tables:
1. Jan 2023 jobs
2. Feb 2023 jobs
3. mARCH 2023 jobs */


CREATE TABLE january_jobs AS 
SELECT * 
FROM 
    job_postings_fact 
WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

CREATE TABLE february_jobs AS 
SELECT * 
FROM 
    job_postings_fact 
WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

CREATE TABLE march_jobs AS 
SELECT * 
FROM 
    job_postings_fact 
WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

SELECT job_posted_date 
FROM 
    march_jobs;