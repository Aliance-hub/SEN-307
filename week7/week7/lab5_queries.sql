USE sen307_20231253;

-- Task 1: Students in one department, sorted A-Z
-- Explanation: Joins the Student table with the Department table on dept_id, 
-- filters for students in the 'Software Engineering' department, and sorts them 
-- alphabetically by full name using ORDER BY ASC.
SELECT s.matric_no, s.full_name, s.gender, d.dept_name
FROM Student s
INNER JOIN Department d ON s.dept_id = d.dept_id
WHERE d.dept_name = 'Software Engineering'
ORDER BY s.full_name ASC;

DESCRIBE Lecturer;
USE sen307_20231253;

-- Task 2: Courses with their lecturers (INNER JOIN)
-- Explanation: Connects Course to Lecturer through the bridging table CourseAllocation 
-- using two INNER JOINs to display each course alongside the name of its assigned lecturer.
SELECT c.course_code, c.course_title, l.lecturer_name
FROM Course c
INNER JOIN CourseAllocation ca ON c.course_id = ca.course_id
INNER JOIN Lecturer l ON ca.lecturer_id = l.lecturer_id
ORDER BY c.course_code;

USE sen307_20231253;

-- Task 3: Students and their courses (LEFT JOIN)
-- Explanation: Uses LEFT JOINs starting from the Student table through Enrolment to Course 
-- to list every student and their enrolled courses, including students with zero enrolments.
SELECT s.matric_no, s.full_name, c.course_code, c.course_title
FROM Student s
LEFT JOIN Enrolment e ON s.student_id = e.student_id
LEFT JOIN Course c ON e.course_id = c.course_id
ORDER BY s.full_name;
USE sen307_20231253;

-- Task 4: Filtering with AND / OR / IN / BETWEEN
-- Explanation: Retrieves female students belonging to Software Engineering (dept 1) 
-- or Artificial Intelligence (dept 3) who were born between January 1, 2004, and December 31, 2005.
SELECT s.matric_no, s.full_name, s.gender, s.date_of_birth, d.dept_name
FROM Student s
INNER JOIN Department d ON s.dept_id = d.dept_id
WHERE s.gender = 'F' 
  AND s.dept_id IN (1, 3) 
  AND s.date_of_birth BETWEEN '2004-01-01' AND '2005-12-31'
ORDER BY s.date_of_birth;
USE sen307_20231253;

-- Task 5: Paginating enrolments with LIMIT and OFFSET
-- Explanation: Paginates the enrolment records 10 rows at a time using LIMIT and OFFSET 
-- paired with ORDER BY to ensure a deterministic, consistent sequence across pages.
-- Page 1 (Rows 1-10):
SELECT e.enrolment_id, s.full_name AS student_name, c.course_code
FROM Enrolment e
INNER JOIN Student s ON e.student_id = s.student_id
INNER JOIN Course c ON e.course_id = c.course_id
ORDER BY e.enrolment_id
LIMIT 10 OFFSET 0;

-- Page 2 (Rows 11-20):
SELECT e.enrolment_id, s.full_name AS student_name, c.course_code
FROM Enrolment e
INNER JOIN Student s ON e.student_id = s.student_id
INNER JOIN Course c ON e.course_id = c.course_id
ORDER BY e.enrolment_id
LIMIT 10 OFFSET 10;