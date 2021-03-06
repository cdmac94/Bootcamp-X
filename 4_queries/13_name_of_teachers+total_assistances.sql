SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort, COUNT(assistance_requests) AS total_assistances
FROM teachers
JOIN cohorts ON cohort_id = cohorts.id
JOIN assistance_requests ON teacher_id = techears.id
JOIN students ON student_id = students.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name
ORDER BY teachers.name;