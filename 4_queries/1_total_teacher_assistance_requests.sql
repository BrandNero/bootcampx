SELECT teachers.name, count(assistance_requests.*) as total_assistances
FROM  assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers,name;
     name     | total_assistances 
--------------+-------------------
 Waylon Boehm |              4227
(1 row)