CREATE DATABASE g_f_g;
USE g_f_g;
-- Create the 'employees' table
CREATE TABLE geeksforgeeks(
	geeks_id INT PRIMARY KEY,
    geeks_name VARCHAR(50),
    geeks_salary INT
);
-- Insert or update operation using MySQL syntax
INSERT INTO geeksforgeeks(geeks_id, geeks_name, geeks_salary)
VALUES (1, 'Sourabh Sahu', 50000)
ON DUPLICATE KEY UPDATE
    geeks_id = VALUES(geeks_name),
    geeks_salary = VALUES(geeks_salary);

-- Display the 'employees' table after upsert
SELECT * FROM geeksforgeeks;

DROP TABLE geeksforgeeks;

-- Create the table
CREATE TABLE IF NOT EXISTS geeksforgeeks (
    id INT PRIMARY KEY,
    column1 VARCHAR(255),
    column2 VARCHAR(255)
);

-- Insert initial data
INSERT INTO geeksforgeeks (id, column1, column2)
VALUES (1, 'initial_value1', 'initial_value2');

-- Upsert operation
INSERT INTO geeksforgeeks (id, column1, column2)
VALUES (1, 'Geek1', 'Geek2')
ON DUPLICATE KEY UPDATE
column1 = 'Geek1',
column2 = 'Geek2';

-- Display the data
SELECT * FROM geeksforgeeks;

