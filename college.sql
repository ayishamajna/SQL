create database college;
use college;
CREATE TABLE student (
    student_id INT,
    student_firstname VARCHAR(100),
    student_lastname VARCHAR(100),
    student_age INT,
    student_class INT,
    PRIMARY KEY (student_id)
);
create table faculty(
faculty_id int,faculty_name varchar(100),faculty_subject varchar(100));
show tables;
describe student;
describe faculty;

alter table student
add student_department varchar(50);
show tables;
describe student;

alter table faculty
add faculty_age varchar(50)
AFTER faculty_name;
describe faculty;

alter table faculty
modify faculty_age int;
describe faculty;

alter table faculty 
change column faculty_id faculty_no int
AFTER faculty_name;
describe faculty;

alter table faculty
RENAME TO teacher;
describe teacher;

