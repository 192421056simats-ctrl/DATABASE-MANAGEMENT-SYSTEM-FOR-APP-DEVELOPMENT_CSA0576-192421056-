-- Experiment14-Repeat-While.sql
USE dbms_lab;
DELIMITER //

CREATE PROCEDURE loop_demo()
BEGIN
  DECLARE i INT DEFAULT 1;
  CREATE TEMPORARY TABLE IF NOT EXISTS tmp_numbers(n INT);
  REPEAT
    INSERT INTO tmp_numbers VALUES (i);
    SET i = i + 1;
  UNTIL i > 5 END REPEAT;
  SELECT * FROM tmp_numbers;
  DROP TEMPORARY TABLE tmp_numbers;
END;
//
DELIMITER ;

CALL loop_demo();
DROP PROCEDURE IF EXISTS loop_demo;
