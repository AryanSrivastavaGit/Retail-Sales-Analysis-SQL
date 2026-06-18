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

-- changing column name of quantiy to quantity
alter table retail_sales_data
rename column quantiy to quantity;
show columns from retail_sales_data;  -- check columns
   
   
-- Data Exploration

-- How many sales we have ?
select count(*) as total_sales from retail_sales_data;  -- total_sales -> 1987

-- How many customers we have ?
select count(distinct(customer_id)) as total_unique_customers from retail_sales_data;  -- total_unique_customers -> 155

-- How many category we have ?
select distinct(category) from retail_sales_data;  -- category -> Beauty, Clothing, Electronics



-- Data Analysis & Business Key Problems & Answers
-- My Analysis and Findings

-- All columns for sales made on 2022-11-05
select * 
from retail_sales_data
where sale_date = '2022-11-05';  -- for different date just change the date value

-- All the transactions where the category is 'clothing' and the quantity sold is more than 3 in the month Nov-2022
select transactions_id, category, quantity, sale_date
from retail_sales_data
where category = 'Clothing' 
and quantity > 3 
and sale_date between '2022-11-01' and '2022-11-30';

-- The total sales for each category
select category, count(total_sale) as total_orders, sum(total_sale) as total_sales
from retail_sales_data
group by category;

