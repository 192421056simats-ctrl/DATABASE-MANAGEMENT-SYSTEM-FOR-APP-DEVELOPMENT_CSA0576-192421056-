-- Experiment09-GroupBy-Having-OrderBy.sql
USE dbms_lab;

SELECT subject, COUNT(*) AS students, AVG(marks) AS avg_marks
FROM marks
GROUP BY subject
HAVING AVG(marks) > 80
ORDER BY avg_marks DESC;
