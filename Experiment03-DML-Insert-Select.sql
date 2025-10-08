-- Experiment03-DML-Insert-Select.sql
USE dbms_lab;

INSERT INTO department (dept_name) VALUES ('CSE'), ('ECE'), ('ME');

INSERT INTO student (student_id, name, dob, email, phone)
VALUES (1,'Amit Kumar','2002-05-10','amit@example.com','9000000001'),
       (2,'Riya Patel','2001-11-03','riya@example.com','9000000002');

SELECT * FROM student;
SELECT name, email FROM student WHERE name LIKE 'A%';
