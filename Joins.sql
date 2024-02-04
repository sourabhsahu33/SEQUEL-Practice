CREATE DATABASE Joins;
USE Joins;

create table student(
s_id  int primary key,
name varchar(50)
);

insert into student values
( 1, "sourab"),
(2, "harshit");
insert into student values (3, "Ankit");

create table course(
c_id int not null,
cours varchar(50),
taech_id int (10)
);
drop table course;

insert into course values
(1, "english", 10),
(2, "math", 20),
(3, "science", 30),
(4, "hindi",  40);

truncate table course;

ALTER TABLE course
CHANGE i_id t_id int not null;

ALTER TABLE course
CHANGE c_id s_id int not null;

SELECT * FROM student;
SELECT * FROM course;

SELECT * 
FROM student 
INNER JOIN course 
ON student.s_id = course.s_id;

SELECT *
FROM student AS s
INNER JOIN course AS c
ON s.s_id = c.s_id;

SELECT *
FROM student
LEFT JOIN course
ON student.s_id = course.s_id;

SELECT *
FROM student as st 
RIGHT JOIN course as cc
ON st.s_id = cc.s_id;

SELECT * FROM course as s
JOIN course as c 
ON s.cours= c.t_id;

