SELECT day, COUNT(assignments) AS number_of_assigments, SUM(duration) AS duration 
FROM assignments
GROUP BY assignments.day
ORDER BY day;