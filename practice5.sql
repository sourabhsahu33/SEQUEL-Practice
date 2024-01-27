-- Create the database
CREATE DATABASE IF NOT EXISTS Practice;
USE Practice;
-- Create a simplified 'guests' table
CREATE TABLE IF NOT EXISTS guests (
  guest_id INT PRIMARY KEY, 
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  total_visits INT
);
-- Insert sample data
INSERT INTO guests (guest_id, first_name, last_name, total_visits)
VALUES
  (1, 'Judy', 'Hopps', 168),
  (2, 'Nick', 'Wilde', 1),
  (3, 'Duke', 'Weaselton', 4),
  (4, 'Tommy', 'Yax', 70),
  (5, 'Lizzie', 'Yax', 80);
-- Query to calculate the average visits
SELECT AVG(total_visits) AS average_visits FROM guests;
-- Query using nested statements to calculate the average visits and retrieve guests with visits above the average
SELECT first_name, last_name, total_visits 
FROM guests 
WHERE total_visits > (
SELECT AVG(total_visits) 
FROM guests);