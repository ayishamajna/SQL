create database workers;
use workers;
CREATE TABLE employee (
    employee_id INT AUTO_INCREMENT,
    employee_name VARCHAR(40),
    age INT,
    PRIMARY KEY (employee_id)
);
INSERT INTO employee VALUES(1,'aswiin',45);
show tables;
describe employee;
select*from employee;
INSERT INTO employee VALUES(2,'majna',67),(3,'aswathi',45),(4,'issha',23);
