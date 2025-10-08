-- Experiment20-StringFunctions1.sql
USE dbms_lab;

SELECT REPLACE('hello world','world','dbms') AS replaced;
SELECT REPEAT('ha',3) AS repeated;
SELECT REVERSE('abcde') AS reversed;
SELECT RIGHT('database',3) AS right3, LEFT('database',4) AS left4;
SELECT RPAD('abc',6,'x') AS rpad_example, LPAD('abc',6,'0') AS lpad_example;
