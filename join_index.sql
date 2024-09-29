
-- create
-- CREATE TABLE EMPLOYEE (
--   empId INTEGER PRIMARY KEY,
--   name TEXT NOT NULL,
--   dept TEXT NOT NULL
-- );

-- -- insert
-- INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales');
-- INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting');
-- INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales');

-- -- fetch 
-- SELECT * FROM EMPLOYEE WHERE dept = 'Sales';

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

insert into course(course_id, course_name) VALUES
(1, "evs"),
(2, "english"),
(3, "math");

SELECT * from course;

insert into student(student_id, student_name, course_id) VALUES
(11, "sourabh", 1),
(22, "harshit", 2),
(33, "ankit", 3),
(55, "chandan", null),
(44, "hanu", null);

select * from student;

create index idx_id on course(course_id);

create index idx_name on student(student_id);
 
create index idx_cour on course(course_name);

SELECT student.student_id, student.student_name, course.course_name
FROM student
LEFT JOIN course ON student.course_id = course.course_id;

SHOW INDEX FROM student;

SHOW INDEX FROM course;

select s.student_id, s.student_name, c.course_name 
from  course as c
left join  student as s
on s.student_id = c.course_id;

SELECT student.student_id, student.student_name, course.course_name
FROM student
LEFT JOIN course ON student.course_id = course.course_id
WHERE course.course_name = 'Math';
