-- Experiment16-Procedures.sql
USE dbms_lab;
DELIMITER //

CREATE PROCEDURE add_student(IN sid INT, IN sname VARCHAR(100), IN semail VARCHAR(150))
BEGIN
  INSERT INTO student(student_id, name, email) VALUES (sid, sname, semail);
END;
//
DELIMITER ;

CALL add_student(10,'Test User','test@example.com');
SELECT * FROM student WHERE student_id = 10;
DROP PROCEDURE IF EXISTS add_student;
