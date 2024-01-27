CREATE DATABASE db_info;
USE db_info;
-- Create a sample 'products' table
CREATE TABLE products (
  id INT PRIMARY KEY,
  price DECIMAL(8,2),
  discount DECIMAL(5,2),
  promo_price DECIMAL(8,2)
);

-- Insert sample data
INSERT INTO products VALUES
  (1, 120.00, 10.00, 0),
  (2, 89.99, 5.00, 0),
  (3, 150.00, 20.00, 120.00);

-- Query to find the maximum price considering discounts and promo prices
SELECT GREATEST(price, price - discount, promo_price) AS max_price
FROM products;








-- Create a sample 'sales' table
CREATE TABLE sales (
  id INT PRIMARY KEY,
  quarter1_sales INT,
  quarter2_sales INT,
  quarter3_sales INT
);

-- Insert sample data
INSERT INTO sales VALUES
  (1, 50000, 60000, 75000),
  (2, 55000, 62000, 80000),
  (3, 60000, 65000, 78000);

-- Query to find the maximum sales across quarters
SELECT GREATEST(quarter1_sales, quarter2_sales, quarter3_sales) AS max_sales
FROM sales;



