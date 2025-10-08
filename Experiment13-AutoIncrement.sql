-- Experiment13-AutoIncrement.sql
USE dbms_lab;

CREATE TABLE IF NOT EXISTS attendance (
  att_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT,
  att_date DATE,
  status VARCHAR(10)
);

INSERT INTO attendance(student_id, att_date, status)
VALUES (1,'2025-10-01','Present'),(3,'2025-10-01','Absent');

SELECT * FROM attendance;
