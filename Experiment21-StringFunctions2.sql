-- Experiment21-StringFunctions2.sql
USE dbms_lab;

SELECT SPACE(5) AS spaces, SUBSTR('database',2,4) AS substr_example;
SELECT UPPER('hello'), LOWER('HELLO'), TRIM('  padded  ') AS trimmed, LENGTH('abc') AS len;
