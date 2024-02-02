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
(03, "Chandan", "B", 90, "Chhapara"),
(04, "Harshit", "C", 85, "Chhindwara"),
(05,"vipin", "S", 99, "Jbp");

INSERT INTO db_info value (06,"Manish", "A", 90, "CWA");
INSERT INTO db_info value (08,"Neeraj", "D", 59, "ATA");
SELECT DISTINCT city FROM db_info;
SELECT grade , count(name)
FROM db_info 
group by grade order by grade desc;


SELECT city, avg(marks)
FROM db_info
GROUP BY city
ORDER BY avg(marks) ASC;

SELECT name, avg(marks)
FROM db_info
GROUP BY name
ORDER BY avg(marks) DESC;

SELECT city, count(name)
FROM db_info
GROUP BY city
HAVING max(marks)> 90;

SELECT city, count(name)
FROM db_info
WHERE grade = "A"
GROUP BY city
HAVING max(marks) >= 80
ORDER BY city ASC;

SET SQL_SAFE_UPDATES = 0;
-- UPDATE QUERIES 
UPDATE db_info
SET grade = "A"
WHERE grade = "O";

UPDATE db_info
SET marks = 95
where marks = 2;

update db_info 
set marks = marks+1;

-- DELETE Queries
DELETE FROM db_info
WHERE marks < 70;

DELETE FROM db_info;

SELECT * FROM db_info;
SELECT name 