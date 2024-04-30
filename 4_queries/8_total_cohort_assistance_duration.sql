SELECT cohorts.name, sum(completed_at - started_at) as total_duration
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;

 name  | total_duration 
-------+----------------
 JUL30 | 390:35:20
 AUG27 | 398:19:00
 JUL02 | 453:50:30
 NOV19 | 462:34:40
 MAY07 | 480:10:55
 OCT22 | 496:09:10
 MAR12 | 540:45:30
 FEB12 | 602:35:55
 JUN04 | 667:26:00
 SEP24 | 754:13:05
 APR09 | 862:26:40
(11 rows)