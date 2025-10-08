-- Experiment11-Joins.sql
USE dbms_lab;

-- Create enrollment table
CREATE TABLE IF NOT EXISTS enrollment (
  enroll_id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT,
  course_id INT
);

INSERT INTO enrollment(student_id, course_id) VALUES (1,101),(3,101);

-- EquiJoin / Inner Join
SELECT s.student_id, s.name, e.course_id
FROM student s JOIN enrollment e ON s.student_id = e.student_id;

-- Left Outer Join (students even without enrollment)
SELECT s.student_id, s.name, e.course_id
FROM student s LEFT JOIN enrollment e ON s.student_id = e.student_id;
