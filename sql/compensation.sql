-- Compensation
WITH estaff AS (
 SELECT *
 FROM staff
 WHERE terminated = false
) 


-- Average salaries by job title, department and sex
--Average sal by job_title
SELECT job_title,
 round(AVG(salary), 0) sal
FROM estaff
GROUP BY job_title
ORDER BY job_title



-- Average sal by department
SELECT department,
 round(AVG(salary), 0) sal
FROM estaff
GROUP BY department
ORDER BY department


--Average salary by sex
SELECT sex,
 round(AVG(salary), 0) sal
FROM estaff
GROUP BY sex 


 -- Average salary by performance
SELECT perf_score performance_rating,
 round(AVG(salary), 0) sal
FROM estaff
GROUP BY performance_rating 


-- Average salary for each job_title and sex
SELECT 
job_title, sex, round(AVG(salary), 0) sal
FROM estaff
GROUP BY job_title, sex
ORDER BY job_title

SELECT 
job_title, sex, round(AVG(salary), 0) sal
FROM estaff
GROUP BY job_title, sex
ORDER BY job_title