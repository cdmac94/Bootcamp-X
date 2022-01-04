SELECT DISTINCT students_name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions ON student.id = student_id
WHERE students_end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;