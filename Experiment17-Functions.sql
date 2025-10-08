-- Experiment17-Functions.sql
USE dbms_lab;
DELIMITER //

CREATE FUNCTION fn_total_marks(sid INT) RETURNS INT DETERMINISTIC
BEGIN
  DECLARE total INT;
  SELECT SUM(marks) INTO total FROM marks WHERE student_id = sid;
  RETURN IFNULL(total,0);
END;
//
DELIMITER ;

SELECT fn_total_marks(1) AS total_for_student1;
DROP FUNCTION IF EXISTS fn_total_marks;
