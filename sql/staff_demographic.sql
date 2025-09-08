--Staff Demographics
-- Employee count by sex
WITH estaff AS (
SELECT *
FROM staff
WHERE terminated = false
)

SELECT sex,
 count(*)
FROM estaff
GROUP BY sex
UNION ALL


-- Employee count by race
SELECT race,
 count(*)
FROM estaff
GROUP BY race
UNION ALL


--Employee count by citizenship
SELECT citizenship,
 count(*)
FROM estaff
GROUP BY citizenship
UNION ALL


--Employee count by department
SELECT department,
 count(*)
FROM estaff
GROUP BY department
UNION ALL


--Employee count by job_title
SELECT job_title,
 count(*)
FROM estaff
GROUP BY job_title