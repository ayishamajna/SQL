CREATE DATABASE EMPLOYEES;
USE EMPLOYEES;
CREATE TABLE employee (
    employee_id INT,
    employee_name VARCHAR(50),
    dapartment VARCHAR(50),
    salary INT
);
show tables;
describe employee;

SELECT DISTINCT employee_id,employee_name FROM employee;

select distinct department from employee;

select*from employee
order by salary desc;

CREATE TABLE sales (
    sale_id INT,
    product_name VARCHAR(50),
    quantity_sold VARCHAR(50)
);
describe sales;
select product_name,sum(quantity_sold)as total_quantity_sold
from sales
group by product_name;

SELECT product_name, SUM(quantity_sold) AS total_quantity_sold
FROM Sales 
GROUP BY product_name 
ORDER BY total_quantity_sold DESC;

SELECT product_name, SUM(quantity_sold) AS total_quantity_sold
FROM Sales 
WHERE quantity_sold > 50 
GROUP BY product_name;





