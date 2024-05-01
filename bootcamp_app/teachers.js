const { Pool } = require("pg");

const pool = new Pool({
  user: "development",
  password: "development",
  host: "localhost",
  database: "bootcampx",
});

const queryString = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teacher;
`;
const cohortName = process.argv[2];
const value = [`%${cohortName}%`];

pool.query(queryString, value)
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    });
  });