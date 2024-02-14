CREATE DATABASE bookstore_management;
USE bookstore_management;

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);

-- SELECT * FROM authors;

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Insert authors
INSERT INTO authors (author_id, author_name) VALUES
(1, 'Author 1'),
(2, 'Author 2'),
(3, 'Author 3');

-- Insert books
INSERT INTO books (book_id, title, author_id, price) VALUES
(101, 'Book 1', 1, 19.99),
(102, 'Book 2', 2, 29.99),
(103, 'Book 3', 1, 24.99),
(104, 'Book 4', 3, 14.99);

-- Insert customers
INSERT INTO customers (customer_id, customer_name) VALUES
(501, 'Customer A'),
(502, 'Customer B'),
(503, 'Customer C');

-- Insert orders
INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1001, 501, '2022-01-15'),
(1002, 502, '2022-02-20'),
(1003, 503, '2022-03-25');

-- Insert order details
INSERT INTO order_details (order_detail_id, order_id, book_id, quantity) VALUES
(2001, 1001, 101, 2),
(2002, 1001, 102, 1),
(2003, 1002, 103, 3),
(2004, 1003, 104, 1);


-- Retrieve the list of top-selling books-
SELECT books.title, SUM(order_details.quantity) AS total_sold
FROM books
JOIN order_details ON books.book_id = order_details.book_id
GROUP BY books.title
ORDER BY total_sold DESC
LIMIT 10; 

-- Calculate total sales revenue for a given period
SELECT SUM(books.price * order_details.quantity) AS total_revenue
FROM books
JOIN order_details ON books.book_id = order_details.book_id
JOIN orders ON order_details.order_id = orders.order_id
WHERE orders.order_date BETWEEN '2022-01-01' AND '2022-12-31';

