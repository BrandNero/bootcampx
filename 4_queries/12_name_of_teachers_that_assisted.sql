SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;
        name        | name  
--------------------+-------
 Cheyanne Powlowski | JUL02
 Georgiana Fahey    | JUL02
 Helmer Rodriguez   | JUL02
 Jadyn Bosco        | JUL02
 Roberto Towne      | JUL02
 Rosalyn Raynor     | JUL02
 Talon Gottlieb     | JUL02
 Waylon Boehm       | JUL02
(8 rows)