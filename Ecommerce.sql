create database E_COMMERCE;
USE E_COMMERCE;
create table Customer(
customer_id int primary key auto_increment,
customer_name varchar(100) not null,
email varchar(100) unique not null,
phone int not null
);

create table Product(
product_id int primary key auto_increment,
product_name varchar(100) not null,
price decimal not null,
stock int not null
);

create table Orders(
order_id int primary key auto_increment,
customer_id int not null,
foreign key (customer_id) references Customer(customer_id),
order_date date not null,
total_amount decimal not null
);

create table OrderDetails(
order_detail_id int primary key auto_increment,
order_id int not null,
foreign key(order_id)references Orders(order_id),
product_id int not null,
foreign key(product_id) references Product(product_id),
quantity int not null,
price decimal not null
);
show tables;
describe customer;
describe product;
describe orders;
describe orderdetails;
