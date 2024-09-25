-- Step 1: Create the 'students' table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,  -- Primary Key (Automatically Incremented)
    name VARCHAR(100),
    department VARCHAR(100),
    year_of_study INT,
    email VARCHAR(100)
);

-- Step 2: Create the 'courses' table
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,  -- Primary Key (Automatically Incremented)
    course_code VARCHAR(50),
    course_name VARCHAR(100),
    instructor VARCHAR(100),
    credits INT
);

-- Step 3: Create the 'attendance' table
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,  -- Primary Key (Automatically Incremented)
    student_id INT,  -- Foreign Key referencing 'students'
    course_id INT,   -- Foreign Key referencing 'courses'
    attendance_date DATE,
    status ENUM('Present', 'Absent'),  -- Attendance Status: Present or Absent
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Step 4: Insert sample data into the 'students' table
INSERT INTO students (name, department, year_of_study, email) VALUES
('Alice Johnson', 'Computer Science', 2, 'alice@example.com'),
('Bob Smith', 'Mechanical Engineering', 1, 'bob@example.com'),
('Charlie Brown', 'Electrical Engineering', 3, 'charlie@example.com'),
('David Green', 'Civil Engineering', 2, 'david@example.com');


-- Step 5: Insert sample data into the 'courses' table
INSERT INTO courses (course_code, course_name, instructor, credits) VALUES
('CS101', 'Introduction to Programming', 'Dr. Alan', 4),
('ME102', 'Thermodynamics', 'Dr. Bryant', 3),
('EE103', 'Circuit Theory', 'Dr. Clark', 3),
('CE104', 'Structural Engineering', 'Dr. Davis', 3);


-- Step 6: Insert sample data into the 'attendance' table
INSERT INTO attendance (student_id, course_id, attendance_date, status) VALUES
(1, 1, '2024-09-01', 'Present'),
(2, 2, '2024-09-01', 'Absent'),
(3, 3, '2024-09-01', 'Present'),
(4, 4, '2024-09-01', 'Present'),
(1, 1, '2024-09-02', 'Absent'),
(2, 2, '2024-09-02', 'Present');

-- Step 7: Create indexes to optimize queries on the database

-- Create an index on the 'name' column of 'students' to speed up student name searches

CREATE INDEX idx_student_name ON students(name);

-- Create an index on 'course_code' in the 'courses' table to optimize course code lookups

CREATE INDEX idx_course_code ON courses(course_code);

-- Create a composite index on 'student_id' and 'course_id' in the 'attendance' table
-- to optimize queries that search by student and course

CREATE INDEX idx_attendance_student_course ON attendance(student_id, course_id);

-- Step 8: Query Examples using the Indexes

-- Example 1: Find student by name

SELECT * FROM students WHERE name = 'Alice Johnson';

-- Example 2: Find all students enrolled in a specific course (using course_code)

SELECT s.name, c.course_name
FROM students s
JOIN attendance a ON s.student_id = a.student_id
JOIN courses c ON a.course_id = c.course_id
WHERE c.course_code = 'CS101';

-- Example 3: Get attendance records for a specific student in a specific course

SELECT s.name, c.course_name, a.attendance_date, a.status
FROM attendance a
JOIN students s ON a.student_id = s.student_id
JOIN courses c ON a.course_id = c.course_id
WHERE s.name = 'Alice Johnson' AND c.course_code = 'CS101';

-- Example 4: Get attendance percentage for a specific student

SELECT s.name, c.course_name,
       (SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END) / COUNT(a.attendance_id)) * 100 AS attendance_percentage
FROM attendance a
JOIN students s ON a.student_id = s.student_id
JOIN courses c ON a.course_id = c.course_id
WHERE s.student_id = 1
GROUP BY c.course_name;

