-- Experiment07-Select-Where.sql
USE dbms_lab;

-- add sample table marks
CREATE TABLE IF NOT EXISTS marks (
  student_id INT,
  subject VARCHAR(50),
  marks INT,
  PRIMARY KEY(student_id, subject)
);

INSERT INTO marks(student_id, subject, marks) VALUES (1,'DBMS',85),(1,'OS',78),(3,'DBMS',92);

SELECT * FROM marks WHERE marks >= 80;
SELECT * FROM marks WHERE subject = 'DBMS' AND marks BETWEEN 80 AND 100;
