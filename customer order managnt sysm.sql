CREATE DATABASE custmrordrmangmntsystm;
USE custmrordrmangmntsystm;
CREATE TABLE customers (
    customer_id INT,
    first_name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(50)
);
SHOW TABLES;
DESCRIBE customers;
CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount INT,
    customer_id INT
);
DESCRIBE orders;

INSERT INTO customers VALUES(1,'nahna','nahna@gmail.com','67985432'),(2,'fidha','fidha@gmail.com','75643219'),(3,'nedha','nedha@gmail.com','808629308');
INSERT INTO orders VALUES(4,'2000-03-24',40000,3),(5,'2004-05-20',50000,2),(6,'2005-08-28',85000,1),(7,'2005-09-20',90000,9),(8,'2005-10-21',35000,10);
select*from customers;
SELECT customers.first_name,orders.amount
FROM customers
JOIN orders on customers.first_name=orders.amount;

UPDATE customers 
SET first_name = 'ALICE'
WHERE customer_id = 1;

describe customer;
select*from customer;

UPDATE Orders 
SET amount = amount * 1.10
WHERE customer_id = 1;