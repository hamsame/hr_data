--Performance & Engagement
SELECT perf_score,
 perf_desc descr,
 round(AVG(salary), 2) sal
FROM staff
GROUP BY perf_score,
 descr
ORDER BY sal DESC --Performance & Engagement
SELECT perf_score,
 perf_desc descr,
 count(*)
FROM staff
GROUP BY perf_score,
 descr