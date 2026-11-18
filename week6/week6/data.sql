SHOW DATABASES;
USE sen307_11367;
SHOW TABLES;
INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');
INSERT INTO Course (course_code, course_title, credit_units, description, dept_id) VALUES
('SEN307', 'Database Systems', 3, 'Relational database design, SQL queries, normalization, transactions and indexing using MySQL.', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('SEN301', 'Software Architecture', 3, 'Architectural styles, design patterns, microservices and how to structure large software systems.', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('COS301', 'Operating Systems', 3, 'Processes, threads, CPU scheduling, memory management and file systems.', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('COS305', 'Computer Networks', 3, 'TCP/IP, routing, switching, LAN and WAN design and network protocols.', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('AIN301', 'Introduction to Artificial Intelligence', 3, 'Intelligent agents, search algorithms, knowledge representation and reasoning.', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN305', 'Machine Learning', 3, 'Supervised and unsupervised learning, neural networks, deep learning and model evaluation.', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN307', 'Natural Language Processing', 3, 'Text processing, word embeddings, language models, sentiment analysis and chatbots.', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('DTS301', 'Data Visualization and Analytics', 2, 'Exploratory data analysis, charts, dashboards and telling stories with data.', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('DTS305', 'Big Data Technologies', 3, 'Distributed storage and processing of very large datasets with Hadoop and Spark.', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('CYB301', 'Network Security', 3, 'Firewalls, cryptography, intrusion detection and protecting networks from attacks.', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));
SELECT * FROM Department;
SELECT course_id, course_code, course_title
FROM Course;
SELECT dept_id, dept_name
FROM Department;
DESCRIBE Lecturer;
INSERT INTO Lecturer (staff_no, lecturer_name, email, dept_id) VALUES
('VUA/ST/101', 'Dr Amaka Okafor', 'a.okafor@vua.edu.ng', 1),
('VUA/ST/102', 'Dr Musa Bello', 'm.bello@vua.edu.ng', 1),
('VUA/ST/103', 'Dr Chinedu Eze', 'c.eze@vua.edu.ng', 2),
('VUA/ST/104', 'Dr Fatima Yusuf', 'f.yusuf@vua.edu.ng', 2),
('VUA/ST/105', 'Dr Grace Johnson', 'g.johnson@vua.edu.ng', 3),
('VUA/ST/106', 'Dr David Okoro', 'd.okoro@vua.edu.ng', 3),
('VUA/ST/107', 'Dr Esther James', 'e.james@vua.edu.ng', 4),
('VUA/ST/108', 'Dr Samuel Obi', 's.obi@vua.edu.ng', 4),
('VUA/ST/109', 'Dr Ibrahim Aliyu', 'i.aliyu@vua.edu.ng', 5),
('VUA/ST/110', 'Dr Blessing Nwosu', 'b.nwosu@vua.edu.ng', 5);
SELECT * FROM Lecturer;
describe Student;
INSERT INTO Student (matric_no, full_name, dept_id, gender, date_of_birth) VALUES
('11342', 'Asonye Emmanuel', 1, 'M', '2005-06-15'),
('20231235', 'Ada Obi', 1, 'F', '2005-03-14'),
('20231236', 'John Musa', 2, 'M', '2004-11-02'),
('20231237', 'Grace Okafor', 3, 'F', '2006-01-20'),
('20231238', 'David Bello', 4, 'M', '2003-08-12'),
('20231239', 'Fatima Yusuf', 5, 'F', '2005-04-25'),
('20231240', 'Chinedu Eze', 1, 'M', '2004-07-19'),
('20231241', 'Blessing James', 2, 'F', '2006-09-10'),
('20231242', 'Samuel Obi', 3, 'M', '2005-12-05'),
('20231243', 'Esther Aliyu', 4, 'F', '2007-02-16'),
('20231244', 'Ibrahim Ahmed', 5, 'M', '2004-05-21'),
('20231245', 'Chioma Nwosu', 1, 'F', '2005-10-30'),
('20231246', 'Peter Daniel', 2, 'M', '2006-03-08'),
('20231247', 'Mary Johnson', 3, 'F', '2003-11-14'),
('20231248', 'Michael Okoro', 4, 'M', '2005-07-22'),
('20231249', 'Sarah James', 5, 'F', '2006-06-17'),
('20231250', 'Emeka Uche', 1, 'M', '2004-02-11'),
('20231251', 'Amina Sani', 2, 'F', '2007-09-03'),
('20231252', 'Daniel Peter', 3, 'M', '2005-01-28'),
('20231253', 'Joy Eze', 4, 'F', '2006-12-19');
SELECT COUNT(*) AS total_students FROM Student;
SELECT student_id, matric_no, full_name
FROM Student;
SELECT course_id, course_code
FROM Course;
INSERT INTO Enrolment (student_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 1),
(4, 4),
(5, 1),
(5, 5),
(6, 1),
(6, 6),
(7, 1),
(7, 2),
(8, 1),
(8, 3),
(9, 1),
(9, 4),
(10, 1),
(10, 5),
(11, 1),
(11, 6),
(12, 1),
(12, 2),
(13, 1),
(13, 3),
(14, 1),
(14, 4),
(15, 1),
(15, 5),
(16, 2),
(16, 3),
(17, 2),
(17, 4),
(18, 3),
(18, 5),
(19, 4),
(19, 6),
(1, 7),
(2, 8);
SELECT COUNT(*) AS total_enrolments FROM Enrolment;
describe CourseAllocation;
INSERT INTO CourseAllocation (lecturer_id, course_id, session) VALUES
(1, 1, '2026/2027'),
(2, 1, '2026/2027'),
(3, 2, '2026/2027'),
(4, 3, '2026/2027'),
(5, 4, '2026/2027'),
(6, 5, '2026/2027'),
(7, 6, '2026/2027'),
(8, 7, '2026/2027'),
(9, 8, '2026/2027'),
(10, 9, '2026/2027'),
(1, 10, '2026/2027');
SELECT matric_no, full_name, dept_id
FROM Student
WHERE matric_no = '11342';
UPDATE Student
SET dept_id = 2
WHERE matric_no = '11342';
SELECT matric_no, full_name, dept_id
FROM Student
WHERE matric_no = '11342';
INSERT INTO Department (dept_name)
VALUES ('Library and Information Science');
INSERT INTO Student (matric_no, full_name, dept_id)
VALUES (
'20239999',
'Transfer Student',
(SELECT dept_id FROM Department
WHERE dept_name = 'Library and Information Science')
);
DELETE FROM Department
WHERE dept_name = 'Library and Information Science';
UPDATE Student
SET dept_id = (
    SELECT dept_id
    FROM Department
    WHERE dept_name = 'Software Engineering'
)
WHERE matric_no = '20239999';
DELETE FROM Department
WHERE dept_name = 'Library and Information Science';
SELECT 'Departments' AS tbl, COUNT(*) AS total FROM Department
UNION ALL
SELECT 'Lecturers', COUNT(*) FROM Lecturer
UNION ALL
SELECT 'Students', COUNT(*) FROM Student
UNION ALL
SELECT 'Courses', COUNT(*) FROM Course
UNION ALL
SELECT 'Enrolments', COUNT(*) FROM Enrolment
UNION ALL
SELECT 'Allocations', COUNT(*) FROM CourseAllocation;