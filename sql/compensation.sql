-- Average salaries by job title, department and sex
--Average sal by job_title
SELECT job_title,
 round(AVG(salary), 2) sal
FROM staff
GROUP BY job_title
UNION ALL
-- Average sal by department
SELECT department,
 round(AVG(salary), 2) sal
FROM staff
GROUP BY department
UNION ALL
--Average salary by sex
SELECT sex,
 round(AVG(salary), 2) sal
FROM staff
GROUP BY sex -- Separate queries due to union mismatches
 -- Average salary by performance
SELECT perf_score performance_rating,
 round(AVG(salary), 2) sal
FROM staff
GROUP BY performance_rating -- Average salary for each job_title and sex
SELECT job_title,
 sex,
 round(AVG(salary), 2) sal
FROM staff
GROUP BY job_title,
 sex