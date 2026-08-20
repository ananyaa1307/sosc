CREATE TABLE students (id INTEGER PRIMARY KEY,name TEXT,age INTEGER,department TEXT,cgpa REAL );
CREATE TABLE departments (id INTEGER PRIMARY KEY,name TEXT , hod TEXT );
CREATE TABLE courses (id INTEGER PRIMARY KEY,name TEXT NOT NULL,credits INTEGER,department TEXT);

INSERT INTO students VALUES
(1, 'Anusha', 20, 'Computer Science', 9.1),
(2, 'Bharat', 21, 'Computer Science', 8.6),
(3, 'Charu', 20, 'Electronics', 8.2),
(4, 'Deepak', 22, 'Mechanical', 7.8),
(5, 'Esha', 20, 'Civil', 9.0),
(6, 'Farhan', 21, 'Computer Science', 7.9),
(7, 'Gauri', 20, 'Electronics', 8.8),
(8, 'Harish', 22, 'Mechanical', 8.1),
(9, 'Ishita', 21, 'Civil', 7.5),
(10, 'Kiran', 20, 'Electronics', 9.3);

INSERT INTO departments VALUES
(1, 'Computer Science', 'Dr. Rao'),
(2, 'Electronics', 'Dr. Priya'),
(3, 'Mechanical', 'Dr. Kumar'),
(4, 'Civil', 'Dr. Mehta');

INSERT INTO courses VALUES
(101, 'Database Management Systems', 4, 'Computer Science'),
(102, 'Data Structures', 4, 'Computer Science'),
(201, 'Digital Electronics', 4, 'Electronics'),
(202, 'Microprocessors', 3, 'Electronics'),
(301, 'Thermodynamics', 4, 'Mechanical'),
(401, 'Structural Engineering', 4, 'Civil');
SELECT * FROM students;

SELECT name, cgpa FROM students;

SELECT * FROM students
WHERE cgpa > 8.0;

SELECT COUNT(*) AS total_students FROM students;

SELECT AVG(cgpa) AS average_cgpa FROM students;

SELECT MAX(cgpa) AS highest_cgpa FROM students;

SELECT MIN(cgpa) AS lowest_cgpa FROM students;

SELECT SUM(cgpa) AS total_cgpa FROM students;

SELECT department, COUNT(*) AS student_count
FROM students
GROUP BY department;

SELECT department, AVG(cgpa) AS average_cgpa
FROM students
GROUP BY department;
