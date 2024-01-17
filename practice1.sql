
CREATE DATABASE XYZ;
use XYZ;


CREATE TABLE emp(
id INT PRIMARY KEY,
name VARCHAR(100),
salary INT 
);


INSERT INTO emp 
( id, name, salary)
VALUES
(1, "sourabh", 1000),
(2, "ss", 2222),
(3, "har", 333);

create table temp1(
id INT UNIQUE,
name VARCHAR(50)
);
INSERT INTO temp1 (id, name)
VALUES
(11, "pratibha"),
(12, "prachi");

create table temp2( 
id INT,
name VARCHAR(50),
age INT,
city VARCHAR(20),
PRIMARY KEY(id, name)
);

INSERT INTO temp2 VALUES (1, "ankit", 20, "seoni");
INSERT INTO temp2 VALUES (2, "lala", 21, "seoni");
INSERT INTO temp2 VALUES (1, "Anuj", 22, "seoni");
INSERT INTO temp2 VALUES(1, "sourabh", 23, "seoni");

create table temp3 (
id INT,
salary INT DEFAULT 25000000);

INSERT INTO temp3 (id)
VALUES
(103),(104),(133);

SELECT * FROM temp3;
SELECT * FROM temp2;
SELECT * FROM emp;
