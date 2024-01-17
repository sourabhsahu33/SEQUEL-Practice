CREATE DATABASE db;
use db;

CREATE TABLE db_info(
id INT PRIMARY KEY,
name VARCHAR(50),
grade varchar(1),
marks INT NOT NULL,
city VARCHAR(20));

INSERT INTO db_info(id, name, grade, marks, city)
VALUES
(01, "sourabh", "S", 99, "SEONI"),
(02, "Ankit", "A", 95, 'Chhapra'),
(03, "Chandan", "C", 90, "Chhapara"),
(04, "Harshit", "H", 85, "Chhindwara");

SELECT city, avg(marks)
FROM db_info
GROUP BY city
ORDER BY avg(marks) ASC;

SELECT name, avg(marks)
FROM db_info
GROUP BY name
ORDER BY avg(marks) DESC;

SELECT * FROM db_info;
SELECT name 