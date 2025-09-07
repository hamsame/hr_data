--Workforce Demographics
-- Employee count by sex
SELECT sex,
 count(*)
FROM staff
GROUP BY sex
UNION ALL
-- Employee count by race
SELECT race,
 count(*)
FROM staff
GROUP BY race
UNION ALL
--Employee count by citizenship
SELECT citizenship,
 count(*)
FROM staff
GROUP BY citizenship
UNION ALL
--Employee count by department
SELECT department,
 count(*)
FROM staff
GROUP BY department
UNION ALL
--Employee count by job_title
SELECT job_title,
 count(*)
FROM staff
GROUP BY job_title