--Student Table
CREATE TABLE students (
student_id INTEGER PRIMARY KEY,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
email varchar(50) ,
birth_date varchar(50),
course_id INTEGER);

--Courses Table
CREATE TABLE courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(100));

--Populating the students table

INSERT INTO students VALUES 
(111,'Alice', 'Smith', 'alice@email.com', '2000-05-12', 101),
(222,'Bob', 'Johnson', 'bob@email.com', '2001-08-23', 102),
(333,'Carol', 'Lee', NULL, '2000-11-17', 101),
(444,'David', 'Brown', 'david@email.com', '1999-07-01', 103),
(555,'David', 'Miller', 'dmiller@email.com', '2001-07-01', 101),
(666,'Eve', 'Williams', 'eve@email.com', '2002-01-29', 102),
(777, 'Zen', 'Brown', 'zen@email.com', '1999-08-01', 103);

---Populating the course table

INSERT INTO courses (course_id, course_name)
VALUES (101, 'SQL Advanced'),
(102, 'Intermediate SQL'),
(103, 'SQL for Data Science');

---Table Queries

SELECT * FROM students;
SELECT * FROM courses;

--Updating Table

UPDATE students
SET email = 'alice.new@email.com', course_id = 103
WHERE student_id = 111

--Deleting Row Data

DELETE FROM students WHERE student_id = 666;

--Selecting unique entries

SELECT DISTINCT last_name FROM students;

--Filtering data

SELECT * 
FROM students
WHERE course_id = 103;

SELECT * 
FROM students
WHERE email IS NULL;

SELECT * 
FROM students
WHERE email IS NOT NULL;

SELECT * 
FROM students
WHERE last_name LIKE 'B%';

SELECT * 
FROM students 
WHERE course_id = 101 AND birth_date > '2000-01-01';

SELECT * 
FROM students 
WHERE course_id = 101 OR course_id = 102;

SELECT * FROM students 
WHERE NOT course_id = 101;

---Aggregate functions

SELECT COUNT(*) 
FROM students;

SELECT course_id, COUNT(*)
FROM students
GROUP BY course_id;

SELECT *
FROM courses;

--Table Joins

SELECT *
FROM students
JOIN courses
ON students.course_id = courses.course_id

SELECT COUNT(*) AS NumofStudents
FROM students
JOIN courses
ON students.course_id = courses.course_id
WHERE course_name = 'SQL for Data Science'

SELECT course_name, COUNT(*) AS NumofStudents
FROM students
JOIN courses
ON students.course_id = courses.course_id
GROUP BY course_name;