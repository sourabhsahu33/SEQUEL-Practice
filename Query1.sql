create DATABASE collage;
USE collage;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
);

SELECT * FROM student;

INSERT INTO student
(rollno, name)
VALUES
(2020, "sourabh"),
(2021, "harish");

INSERT INTO student VALUES (104, "anuj");

DROP TABLE student;

CREATE TABLE student_info(
roll_no INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student_info (roll_no, name, marks, grade, city)
VALUES 
(20, "sourabh", 99, 'A' , "seoni"),
(21, "Vivek", 90, 'A' , "Chhapara"),
(22, "Harish", 85, 'A' , "Ratlam"),
(23, "Divyansh", 80, 'A' , "Pune"),
(24, "yogesh", 45, 'A' , "C");

INSERT INTO student_info VALUES (25, "Akshay", 99,"A", "SEONI");
INSERT INTO student_info VALUES (26,"Ankit", 98, "A", "chh");

SELECT name , marks, grade FROM student_info;
SELECT city FROM student_info;
SELECT DISTINCT city FROM student_info;
SELECT * FROM student_info;
SELECT * FROM student_info WHERE city ='SEONI';

-- SELECT * FROM student_info WHERE marks > 80; 
SELECT *
FROM student_info 
WHERE marks >= 85 OR  city = 'Chhapara';

SELECT * from student_info;
SELECT avg(marks) 
FROM student_info
WHERE marks > (SELECT avg(marks) from student_info);

SELECT roll_no, name, marks
FROM student_info
WHERE marks > (SELECT AVG(marks) FROM student_info);

SELECT roll_no, name
FROM student_info
WHERE roll_no % 2=0;

SELECT roll_no , name 
FROM student_info
WHERE roll_no IN (20,22,24,26);


--  Clause operation perform 
SELECT * 
FROM student_info 
WHERE marks BETWEEN 80 AND 99;

SELECT * 
FROM student_info 
WHERE city in ("SEONI", "Pune", "Ratlam", "chh");

SELECT * 
FROM student_info 
WHERE city not in ("SEONI", "Pune", "Ratlam", "chh");

SELECT *
FROM student_info
WHERE marks >80
LIMIT 4;

SELECT * FROM student_info ORDER BY marks ASC;
SELECT * FROM student_info order by city AND marks ASC;

SELECT * FROM student_info ORDER BY marks desc limit 3;

SELECT max(marks) FROM student_info;
SELECT min(marks) FROM student_info;
SELECT count(city) FROM student_info;
SELECT avg(marks) FROM student_info;
SELECT sum(marks) FROM student_info;
SELECT count(grade) FROM student_info;

SELECT city, count(roll_no)
FROM student_info GROUP BY city;
SELECT city, count(name)
FROM student_info GROUP BY city;

SELECT city,name, count(marks)
FROM student_info GROUP BY city, name;

SELECT city, max(marks)
FROM student_info GROUP BY city;

SELECT city, avg(marks)
FROM student_info 
GROUP BY city
ORDER BY city DESC;

SELECT avg(marks)
FROM student_info
where marks > 85.1429;


SHOW TABLES;
SHOW DATABASES;