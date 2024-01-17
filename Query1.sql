create DATABASE collage;
create DATABASE if not exists collage;


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
(21, "Vivek", 99, 'A' , "seoni"),
(22, "Harish", 99, 'A' , "seoni"),
(23, "Divyansh", 99, 'A' , "seoni"),
(24, "yogesh", 99, 'A' , "seoni");

SELECT * FROM student_info;
SHOW TABLES;
SHOW DATABASES;