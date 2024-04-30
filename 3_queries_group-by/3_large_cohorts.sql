SELECT cohorts.name as cohort_name, count(*) as student_count
FROM students
join cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING COUNT(*) >= 18
ORDER BY student_count;

 cohort_name | student_count 
-------------+---------------
 FEB12       |            18
 APR09       |            19
 JUN04       |            19
 NOV19       |            22
 SEP24       |            22
(5 rows)