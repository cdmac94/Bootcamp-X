SELECT DISTINCT cohorts_name as cohort, count(assignments_submissions.*) AS total_submissions 
FROM assignment_submissions 
JOIN students ON cohorts.id = cohort_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;