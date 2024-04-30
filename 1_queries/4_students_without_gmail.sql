SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
AND phone IS NULL;
      name       | id  |           email           | cohort_id 
-----------------+-----+---------------------------+-----------
 Javonte Ward    | 178 | jessie_howell@hotmail.com |          
 Jessika Jenkins | 187 | stephanie.koss@kevon.io   |          
 Jerrold Rohan   | 189 | wehner.twila@hotmail.com  |          
(3 rows)