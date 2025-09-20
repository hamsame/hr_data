-- Turnover analysis 
-- analysis by department
SELECT department,
 count(*)
 FROM staff
 WHERE terminated = true
GROUP BY terminated, department 
 

-- analysis by job_title
SELECT job_title,
 count(*)
 FROM staff
 WHERE terminated = true
GROUP BY terminated, job_title 
ORDER BY job_title


-- most common resignation reasons
SELECT termination_reason reason,
 count(*) reason_count
FROM staff
WHERE terminated and employment_status = 'Voluntarily Terminated'
GROUP BY reason
ORDER BY reason_count DESC
LIMIT 5


-- Average tenure
SELECT round(AVG(termination_date - hire_date), 0) tenure_days --AS tenure
FROM staff 


-- turnover by satisfaction
SELECT emp_satisfaction satisfaction,
 count(*) total
FROM staff
GROUP BY satisfaction
ORDER BY total DESC