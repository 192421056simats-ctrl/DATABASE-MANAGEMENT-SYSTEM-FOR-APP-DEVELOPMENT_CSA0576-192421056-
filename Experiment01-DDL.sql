-- Experiment01-DDL.sql
CREATE DATABASE IF NOT EXISTS dbms_lab;
USE dbms_lab;

CREATE TABLE IF NOT EXISTS student (
  student_id INT PRIMARY KEY,
  name VARCHAR(100),
  dob DATE,
  email VARCHAR(150)
);

ALTER TABLE student ADD COLUMN phone VARCHAR(15);

TRUNCATE TABLE student; -- empties table
DROP TABLE IF EXISTS old_table;
