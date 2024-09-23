create database employeemanagementsystem;
use employeemanagementsystem;
CREATE TABLE employee (
    employee_id INT AUTO_INCREMENT,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    salary INT,
    department VARCHAR(40),
    PRIMARY KEY (employee_id)
    );
    INSERT INTO employee VALUES(1,'Raju','p',40000,'IT'),(2,'ganesh','appu',50000,'marketing'),(3,'fathima','thamanna',45000,'management'),(4,'aswin','pradeep',70000,'finance'),(5,'asiya','nehla',60000,'IT');
    select*from employee;
    
    alter table employee
    ADD date_of_joining date;
    describe employee;
    
    UPDATE employee
    SET salary = 60000
    WHERE department = 'IT';
    
    select*from employee
    WHERE salary > 60000;
    
    DROP TABLE employee;
    
    
    