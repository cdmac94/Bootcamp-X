SELECT SUM(assignments_submission.duration) AS total_duration
FROM assignments_submission
JOIN students ON students.id = student_id
WHERE name = 'Ibrahim Schimmel';