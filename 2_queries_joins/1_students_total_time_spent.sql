SELECT SUM(duration) as total_duration
FROM assignment_submissions JOIN students on students.id = student_id
WHERE name = 'Ibrahim Schimmel';

 total_duration 
----------------
           6888
(1 row)