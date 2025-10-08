-- Experiment02-Constraints.sql
USE dbms_lab;

CREATE TABLE department (
  dept_id INT PRIMARY KEY AUTO_INCREMENT,
  dept_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE instructor (
  instr_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  dept_id INT,
  hired_date DATE,
  CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE course (
  course_id INT PRIMARY KEY,
  title VARCHAR(150) NOT NULL,
  credits INT DEFAULT 3,
  CHECK (credits > 0 AND credits <= 6)
);
