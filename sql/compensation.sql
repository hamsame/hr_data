-- Compensation
-- Average sal by department
SELECT department,
 round(AVG(salary), 0) sal
FROM staff
WHERE terminated = false
GROUP BY department
ORDER BY department

--Average sal by job titles
SELECT job_title,
 round(AVG(salary), 0) sal
FROM staff
WHERE terminated = false
GROUP BY job_title
ORDER BY job_title

--Top paying jobs 
SELECT job_title,
 round(AVG(salary), 0) sal
FROM staff
WHERE terminated = false
GROUP BY job_title
ORDER BY sal DESC
LIMIT 10

-- Average salary for each job_title and sex
SELECT 
job_title, sex, round(AVG(salary), 0) sal
FROM staff
GROUP BY job_title, sex
ORDER BY job_title


 -- Average salary by performance
SELECT perf_score performance_rating, perf_desc perf_descrription,
 round(AVG(salary), 0) sal
FROM staff
WHERE terminated = false
GROUP BY performance_rating, perf_descrription 
ORDER BY sal DESC
