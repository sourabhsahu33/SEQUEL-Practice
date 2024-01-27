CREATE DATABASE GeeksforGeeks;
USE GeeksforGeeks;

-- Create a sample 'products' table
CREATE TABLE products (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  category VARCHAR(50)
);
-- Insert sample data
INSERT INTO products VALUES
  (1, 'Laptop', 'Electronics'),
  (2, 'Desk Chair', 'Furniture'),
  (3, 'Notebook', 'Stationery'),
  (4, 'Camera', 'Electronics'),
  (5, 'Office Chair', 'Furniture');

-- Query to retrieve Electronics and Furniture products with names containing 'a'
SELECT id, name, category
FROM products
WHERE category IN ('Electronics', 'Furniture') 
  AND name LIKE '%a%';


-- Another Example in Same DB

-- Create a sample 'users' table
CREATE TABLE GFG (
  id INT PRIMARY KEY,
  username VARCHAR(50),
  department VARCHAR(50)
);

-- Insert corrected sample data
INSERT INTO GFG VALUES
  (1, 'john_doe', 'HR'),
  (2, 'jane_smith', 'IT'),
  (3, 'sam_jones', 'Finance'),
  (4, 'mary_white', 'HR'),
  (5, 'jennifer_davis', 'HR'); -- Additional user with HR department

-- Query to retrieve users from HR department whose usernames start with 'j'
SELECT id, username, department
FROM GFG
WHERE department IN ('HR', 'Finance') 
  AND username LIKE 'j%';
