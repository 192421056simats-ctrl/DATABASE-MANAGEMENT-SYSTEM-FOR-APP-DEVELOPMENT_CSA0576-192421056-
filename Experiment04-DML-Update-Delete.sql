-- Experiment04-DML-Update-Delete.sql
USE dbms_lab;

UPDATE student SET email='amit.k@example.com' WHERE student_id=1;
UPDATE student SET phone=NULL WHERE student_id=2;

DELETE FROM student WHERE student_id = 999; -- safe delete (no row)
-- to delete an actual row:
DELETE FROM student WHERE student_id = 2;

SELECT * FROM student;
