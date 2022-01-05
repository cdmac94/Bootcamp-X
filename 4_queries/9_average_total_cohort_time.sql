SELECT AVG(total_duration_time) AS average_total_duration
FROM (SELECT SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration_time) AS total_duration_time;