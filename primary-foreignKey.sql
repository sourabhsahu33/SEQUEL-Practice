create database clg_db;
USE clg_db;

create table dept(
id int primary key,
name varchar(50)
);

SET SQL_SAFE_UPDATES = 0;
insert into dept value
(1, "sourabh"),
(2,"Ankit"),
(3, "Harshit");

update dept  
set name = "Chandan"
where name = "Ankit";

select * from dept;

create table teacher(
id int primary key, 
name varchar(50),
dept_id int, 
foreign key (dept_id) references dept(id)
on update cascade
on delete cascade
);

insert into teacher value 
( 1, "John", 1),
( 2, "Adam", 2);

SELECT * from teacher;

create table student(
roll_no int primary key,
name char(50),
marks int not null,
grade varchar(1),
city varchar(50)
);
INSERT INTO student (roll_no, name, marks, grade, city)
VALUES 
(20, "sourabh", 99, 'A' , "seoni"),
(21, "Vivek", 90, 'A' , "Chhapara"),
(22, "Harish", 85, 'A' , "Ratlam"),
(23, "Divyansh", 80, 'A' , "Pune"),
(24, "yogesh", 45, 'A' , "C");

ALTER TABLE student 
ADD COLUMN  count varchar(50) not null default "SEONI"; 
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 25;

ALTER TABLE student
MODIFY age varchar(3);

ALTER TABLE student
CHANGE age student_age INT ;

ALTER TABLE student
CHANGE name full_name varchar(50);

ALTER TABLE student 
DROP COLUMN age;

INSERT INTO student  (roll_no, name, marks, grade)
VALUES
(26, "HARSH", 85, "A"),
(27, "Vipin", 97, "S");

DELETE FROM student
WHERE marks < 50; 

TRUNCATE TABLE student;
drop table student; 
SELECT * FROM student;