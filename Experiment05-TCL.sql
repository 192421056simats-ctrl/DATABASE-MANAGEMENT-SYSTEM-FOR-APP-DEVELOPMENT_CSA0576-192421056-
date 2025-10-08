-- Experiment05-TCL.sql
USE dbms_lab;

START TRANSACTION;
INSERT INTO student(student_id, name, dob, email) VALUES (3,'Neha','2000-02-14','neha@example.com');
SAVEPOINT sp1;
UPDATE student SET email='neha.upd@example.com' WHERE student_id=3;
ROLLBACK TO sp1; -- undo update but keep insert
COMMIT; -- commit the transaction
