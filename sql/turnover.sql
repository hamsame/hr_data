-- Turnover analysis 
WITH tstaff AS (
 SELECT *
 FROM staff
 WHERE terminated = true
) 


-- analysis by department
SELECT department,
 count(*)
FROM tstaff
GROUP BY terminated, department 
 

-- analysis by job_title
SELECT job_title,
 count(*)
FROM tstaff
GROUP BY terminated, job_title 
 
 
-- analysis by sex
SELECT sex,
 count(*)
FROM tstaff
GROUP BY sex 


-- most common resignation reasons
SELECT termination_reason reason,
 count(*) rc
FROM staff
WHERE terminated and employment_status = 'Voluntarily Terminated'
GROUP BY reason
ORDER BY rc DESC
LIMIT 5


-- resignation reasons for Production department
SELECT 
termination_reason reason,
 count(*) rc
FROM staff
WHERE terminated and department LIKE ('%Production%')
GROUP BY reason
ORDER BY rc DESC


-- Average tenure
SELECT round(AVG(termination_date - hire_date), 0) tenure_days --AS tenure
FROM staff 


-- attrition by satisfaction
SELECT emp_satisfaction satisfaction,
 count(*) c
FROM staff
GROUP BY satisfaction
ORDER BY c DESC