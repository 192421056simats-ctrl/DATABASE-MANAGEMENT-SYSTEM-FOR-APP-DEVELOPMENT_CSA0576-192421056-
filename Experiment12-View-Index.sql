-- Experiment12-View-Index.sql
USE dbms_lab;

CREATE VIEW vw_student_contact AS
SELECT student_id, name, email, phone FROM student;

SELECT * FROM vw_student_contact;

-- Index
CREATE INDEX idx_student_name ON student(name);
SHOW INDEX FROM student;
