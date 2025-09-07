-- Turnover analysis 
WITH tstaff AS (
 SELECT *
 FROM staff
 WHERE terminated = true
) --by department
SELECT department,
 count(*)
FROM tstaff
GROUP BY terminated,
 department --by job_title
SELECT job_title,
 count(*)
FROM tstaff
GROUP BY terminated,
 job_title -- by sex
SELECT sex,
 count(*)
FROM tstaff
GROUP BY sex -- most common termination_reason
SELECT termination_reason reason,
 count(*) rc
FROM tstaff
GROUP BY reason
ORDER BY rc DESC
LIMIT 1 -- Average tenure
SELECT round(AVG(termination_date - hire_date), 0) tenure_days --AS tenure
FROM staff -- attrition by satisfaction
SELECT emp_satisfaction satisfaction,
 count(*) c
FROM staff
GROUP BY satisfaction
ORDER BY c DESC