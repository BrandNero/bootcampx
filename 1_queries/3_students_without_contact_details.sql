SELECT name, id, cohort_id
FROM students
WHERE email IS NULL
OR phone IS NULL;
       name       | id  | cohort_id 
------------------+-----+-----------
 Aurore Yundt     | 160 |        11
 Cory Toy         | 161 |        11
 Kurt Turcotte    | 163 |        11
 Elda McClure     | 164 |        11
 Luisa Sipes      | 168 |        11
 Bertha Johnson   | 172 |        11
 Freeman Marks    | 175 |          
 Javonte Ward     | 178 |          
 Trace Mohr       | 179 |          
 Ibrahim Lubowitz | 181 |          
 Hayden Cronin    | 182 |          
 Marisa Rau       | 183 |          
 Hettie Hettinger | 184 |          
 Nola Jerde       | 185 |          
 Jessika Jenkins  | 187 |          
 Jerrold Rohan    | 189 |          
 Vivienne Larson  | 191 |          
(17 rows)