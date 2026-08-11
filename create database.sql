-- CREATE DATABASE pizzahut;
-- order_id, date,time
CREATE TABLE orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE,
order_time TIME
); 

CREATE TABLE order_details(
order_details_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
pizza_id TEXT,
quantity INT
);