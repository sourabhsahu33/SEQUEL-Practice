-- Create the database
CREATE DATABASE IF NOT EXISTS GFG;
USE GFG;

-- Create sample tables
CREATE TABLE IF NOT EXISTS products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS orders (
  order_id INT PRIMARY KEY,
  product_id INT,
  quantity INT
);

-- Insert sample data
INSERT INTO products VALUES
  (1, 'Laptop'),
  (2, 'Desk Chair'),
  (3, 'Notebook'),
  (4, 'Headphones'),
  (5, 'Monitor');

INSERT INTO orders VALUES
  (1, 1, 10),
  (2, 2, 5),
  (3, 1, 15),
  (4, 3, 8),
  (5, 4, 12),
  (6, 5, 6);
  
-- Query using a Nested SELECT Statement for complex filtering
SELECT p.product_id, p.product_name, o.quantity
FROM products p
JOIN orders o ON p.product_id = o.product_id
WHERE o.quantity > (SELECT MAX(quantity) FROM orders);

SELECT MAX(quantity) FROM orders;

SELECT p.product_id, p.product_name, o.quantity
FROM products p
JOIN orders o ON p.product_id = o.product_id;
