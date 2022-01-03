SELECT students.name, students.start_date, cohorts.name, cohort.start_date AS cohort_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;