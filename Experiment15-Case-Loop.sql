-- Experiment15-Case-Loop.sql
USE dbms_lab;

CREATE TABLE IF NOT EXISTS employees (
  emp_id INT PRIMARY KEY,
  name VARCHAR(100),
  salary INT
);

INSERT INTO employees VALUES (201,'Rohit',25000),(202,'Sana',32000);

SELECT emp_id, name,
CASE
  WHEN salary < 30000 THEN 'Low'
  WHEN salary BETWEEN 30000 AND 50000 THEN 'Medium'
  ELSE 'High'
END AS salary_band
FROM employees;
