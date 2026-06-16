create database retail_db;
use retail_db;
show tables;

create table retail_sales_data (
transactions_id int primary key,
sale_date date,
sale_time time,
customer_id int,
gender varchar(20),
age int,
category varchar(50),
quantiy int,
price_per_unit decimal(12,2),
cogs decimal(12,2),
total_sale decimal(12,2)
);

show tables;
select * from retail_sales_data;