create database EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    hire_date DATE,
    email VARCHAR(50),
    primary key(emp_id));
describe employees;
CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50),
    PRIMARY KEY (dept_id)
);
SELECT emp_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;

SELECT emp_name
FROM employees
WHERE emp_name LIKE 'A%';

SELECT emp_name
FROM employees
WHERE dept_id IN (101, 102, 103);

SELECT emp_name
FROM employees
WHERE email IS NULL;

SELECT emp_name
FROM employees
WHERE email IS NOT NULL;

SELECT emp_name, salary
FROM employees
WHERE salary BETWEEN 50000 AND 100000;

SELECT emp_name
FROM employees
WHERE emp_name REGEXP 'e.n';

SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.dept_id IS NULL;

SELECT emp_name, salary, email
FROM employees
WHERE dept_id = 101 
AND salary BETWEEN 60000 AND 90000
AND email IS NOT NULL;

SELECT emp_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5 OFFSET 5;
