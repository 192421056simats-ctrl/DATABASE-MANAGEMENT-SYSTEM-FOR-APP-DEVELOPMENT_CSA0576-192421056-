-- Experiment18-Cursors.sql
USE dbms_lab;
DELIMITER //

CREATE PROCEDURE proc_cursor_example()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE s_id INT;
  DECLARE cur1 CURSOR FOR SELECT student_id FROM student;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
  OPEN cur1;
  read_loop: LOOP
    FETCH cur1 INTO s_id;
    IF done THEN LEAVE read_loop; END IF;
    -- Here you could perform operations per student
    SELECT CONCAT('Processing student ', s_id) AS message;
  END LOOP;
  CLOSE cur1;
END;
//
DELIMITER ;

CALL proc_cursor_example();
DROP PROCEDURE IF EXISTS proc_cursor_example;
