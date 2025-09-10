--Staff Demographics
-- Employee count by sex
SELECT sex,
 count(*)
FROM staff
WHERE terminated = false
GROUP BY sex


-- Diversity by department
SELECT department, COUNT (DISTINCT race) as distinct_races, count(*) total_dept_staff
FROM staff
WHERE terminated = false
GROUP BY department
ORDER BY distinct_races DESC


--Employee count by citizenship
SELECT citizenship,
 count(*) citizenship_count
FROM staff
WHERE terminated = false
GROUP BY citizenship
ORDER BY citizenship_count DESC