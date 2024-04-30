SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, COUNT(*) as total_request
FROM assistance_requests
join assignments on assignments.id = assignment_id
GROUP BY assignments.id, assignments.name, assignments.chapter
ORDER BY total_request DESC;

 id  |       name       | day | chapter |total_requests 
-----+------------------+-----+---------+------------------
 424 | Ullam cumque     |  51 |      12 |           143
 423 | Culpa esse sint  |  51 |      11 |           113
  45 | Quia quasi       |   5 |       7 |            86
  50 | A rerum          |   6 |       5 |            83
 141 | Illo error dolor |  17 |       9 |            82
 ...
(424 rows)