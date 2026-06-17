-- database created 
create database retail_db;
use retail_db;
show tables;

-- table created
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

-- table data imported using inbuild import wizard
-- check imported and rejected row data
show tables;
select * from retail_sales_data;
show warnings;
SHOW COUNT(*) WARNINGS;

-- check for empty/null value for data cleaning
SELECT *
FROM retail_sales_data
WHERE transactions_id IS NULL
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR customer_id IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR category IS NULL
   OR quantiy IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;
   
   
-- Data Exploration
