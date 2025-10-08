-- Experiment19-Triggers.sql
USE dbms_lab;

CREATE TABLE IF NOT EXISTS audit_student (
  audit_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT,
  action VARCHAR(20),
  action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //
CREATE TRIGGER trg_student_after_insert
AFTER INSERT ON student
FOR EACH ROW
BEGIN
  INSERT INTO audit_student(student_id, action) VALUES (NEW.student_id, 'INSERT');
END;
//
DELIMITER ;

-- Test trigger
INSERT INTO student(student_id, name, email) VALUES (50,'TriggerTest','tst@example.com');
SELECT * FROM audit_student WHERE student_id = 50;
