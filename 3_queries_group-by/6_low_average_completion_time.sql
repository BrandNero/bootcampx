SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration
FROM  assignment_submissions
JOIN students on students.id = student_id
join assignments on assignments.id = assignment_id
WHERE students.end_date IS NULL 
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY AVG(assignment_submissions.duration) ASC;