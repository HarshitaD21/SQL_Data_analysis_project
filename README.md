# Introduction
Dive into the data job market! Focusing on data analayst roles, this project explores top paying jobs, in-demand skills, and where high demand meets high salary in data analytics.

SQL queries? Check them out here: [project_sql folder](/project_sql/)

# Background
Driven by a quest to navigate the data analyst job market more effectively, this project was born from a desire to pinpoint top-paid and in-demand skills, streamlining others work to find optimal jobs.

Data hails from my [SQL Course](https://lukebarousse.com/sql). It's packed with insights on job title, salaries, locations, and essential skills.

### The questions i wanted to answer through my SQL queries were:

1. What are the top-paying data analyst jobs?
2. What skills are required for these top-paying jobs?
3. What skills are most in demand for data analyst?
4. Which skills are associated with higher salries?
5. What are the most optimal skills to learn?


# Tools I used
For my dive into the data analayst job market, I harnessed the power of several key tools:

- **SQL:** The backbone of my analaysis, allowing me to query the database and unearth critical insights.
- **PostgresSQL :** The chosen database management system, ideal for handling the job posting data.
- **Visual Studio Code :** My go-to for database management and executing SQL queries.
- **Git and GitHub :** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking. 

# The Aanlysis
Each query for this project aimed at investigating specific aspects of data analyst job market. 
Here's how I approached each question: 

### 1. Top Paying Data Analayst Jobs
To identify teh highest-paying roles, I filtered data analayst postions by average yearly salary and location, focsuing on remote jobs. This query highlights the high paying opportunities in the field.

```
SELECT
    job_id,
    job_title,
    name AS company_name,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg desc
LIMIT 10
```

Here's the breakdown of the top data analsyt jobs in 2023:
- **Wide Salary Range :** Top 10 paying data analyst roles span from $184,000 to $650,000, indicating significant salary potential in the field.

- **Diverse Employers :** Companies like SmartAsset, Meta, and AT&T are among those offering high salaries, showing a broad interest across different industries.

- **Job Totle Variety :** There's a high diversity in job titles, from Data Analyst to Director of Analytics, reflecting varied roles abd specialization within data analytics. 

# What I Learned
Throughout this adventure, I've turbocharged my SQL toolkit with some serious firepower:

- **Complex Query Craftings :** Mastered the art of advanced SQL, merging tables like a pro and wielding WITH clauses for ninja-level temp table maneuvers.

- **Data Aggregation :** Got cozy with GROUP BY and turned aggrgate functins like COUNT() and AVG() into my data-summarizing sidekicks.

- **Analytical Wizardary :** Leveled up my real-world puzzle-solving skills, turning questions into actionable, insightful SQL queries. 

# Conclusion 
This project enhanced my SQL skills and provided valuable insights into the dsta analyst job market. The finsings from the analysis serve as a guide to prioritizing skill development and job search efforts. Aspiring data analyts can better position tehmselves in a competatitive job market by focusing on high-demand, high-salary skills. This exploration highlights the importance of continuous learning and adaptation to emerging trends in the field of data analytics. 
