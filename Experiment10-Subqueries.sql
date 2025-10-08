-- Experiment10-Subqueries.sql
USE dbms_lab;

-- Subquery: find students who scored more than average in DBMS
SELECT student_id, marks FROM marks
WHERE subject='DBMS' AND marks > (SELECT AVG(marks) FROM marks WHERE subject='DBMS');

-- Correlated subquery: students who got highest marks in their subject
SELECT m1.* FROM marks m1
WHERE marks = (SELECT MAX(m2.marks) FROM marks m2 WHERE m2.subject = m1.subject);
