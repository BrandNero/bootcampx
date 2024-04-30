SELECT cohorts.name, AVG(completed_at-started_at) as average_assistance_duration
FROM students
JOIN cohorts ON cohorts.id = cohort_id
JOIN assistance_requests ON student_id = students.id
GROUP BY cohorts.name
HAVING AVG(completed_at-started_at) = (
  SELECT MAX(avg_duration)
  FROM (
    SELECT AVG(completed_at-started_at) as avg_duration
    FROM students
    JOIN cohorts ON cohorts.id = cohort_id
    JOIN assistance_requests ON student_id = students.id
    GROUP BY cohorts.name
  ) AS subquery
);

 name  | average_assistance_time 
-------+-------------------------
 MAR12 | 00:15:44.556041
(1 row)