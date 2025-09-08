--Performance & Engagement
--Performance & salaries
SELECT 
 perf_desc performance_description,
 round(AVG(salary), 0) Average_Salary
FROM staff
WHERE terminated = false
GROUP BY 
 performance_description
ORDER BY Average_Salary DESC 

--Performance distribution
SELECT 
 perf_desc description,
 count(*)
FROM staff
WHERE terminated = false
GROUP BY description

-- Department Performance
SELECT department,
 round(AVG(perf_score), 0) department_performance
FROM staff
WHERE terminated = false
GROUP BY department
ORDER BY department

-- Performance of people who have taken on a special project
SELECT spec_proj_count,
-- round(AVG(perf_score), 0) Performance,
 perf_desc
FROM staff
WHERE spec_proj_count > 0
 AND terminated = false
GROUP BY spec_proj_count,
 perf_desc
ORDER BY spec_proj_count DESC