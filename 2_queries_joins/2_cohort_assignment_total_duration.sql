SELECT  SUM(assignments_submission.duration) AS total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohort.id = cohort_id
WHERE cohort_name = 'FEB12'; 