SELECT cohorts.name, AVG(completed_at-started_at) as average_assistance_duration
FROM students
JOIN cohorts ON cohorts.id = cohort_id
JOIN assistance_requests ON student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assistance_duration ASC;
 name  | average_assistance_duration 
-------+-----------------------------
 SEP24 | 00:13:23.071576
 JUL30 | 00:13:23.956547
 FEB12 | 00:13:42.66022
 JUN04 | 00:13:45.974562
 MAY07 | 00:13:58.745754
 JUL02 | 00:13:59.152542
 AUG27 | 00:14:15.572792
 NOV19 | 00:14:34.16273
 OCT22 | 00:15:22.121838
 APR09 | 00:15:39.425113
 MAR12 | 00:15:44.556041
(11 rows)
