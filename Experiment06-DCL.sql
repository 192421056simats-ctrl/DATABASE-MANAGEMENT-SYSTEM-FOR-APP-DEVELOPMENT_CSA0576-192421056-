-- Experiment06-DCL.sql
USE dbms_lab;

CREATE USER IF NOT EXISTS 'labuser'@'localhost' IDENTIFIED BY 'Lab@123';
GRANT SELECT, INSERT, UPDATE ON dbms_lab.* TO 'labuser'@'localhost';
REVOKE UPDATE ON dbms_lab.* FROM 'labuser'@'localhost';
FLUSH PRIVILEGES;
