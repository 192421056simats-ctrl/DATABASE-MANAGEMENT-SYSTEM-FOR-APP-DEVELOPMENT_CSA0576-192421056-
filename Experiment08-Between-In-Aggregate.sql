-- Experiment08-Between-In-Aggregate.sql
USE dbms_lab;

SELECT student_id, AVG(marks) AS avg_marks FROM marks GROUP BY student_id;

SELECT * FROM marks WHERE marks BETWEEN 70 AND 90;
SELECT * FROM marks WHERE subject IN ('DBMS','OS');
