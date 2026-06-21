"# Retail-Sales-Analysis-SQL" 

# Retail Sales Analysis using MySQL

## Project Overview

This project analyzes retail sales data using MySQL to uncover business insights and answer common retail analytics questions. The dataset contains transaction-level information including customer demographics, product categories, sales amounts, and purchase timestamps.

The project covers:

* Database creation
* Data import and cleaning
* Data exploration
* Business analysis using SQL queries
* Sales and customer insights

---

## Database Schema

### Table: `retail_sales_data`

| Column          | Data Type         |
| --------------- | ----------------- |
| transactions_id | INT (Primary Key) |
| sale_date       | DATE              |
| sale_time       | TIME              |
| customer_id     | INT               |
| gender          | VARCHAR(20)       |
| age             | INT               |
| category        | VARCHAR(50)       |
| quantity        | INT               |
| price_per_unit  | DECIMAL(12,2)     |
| cogs            | DECIMAL(12,2)     |
| total_sale      | DECIMAL(12,2)     |

---

## Data Cleaning

The following data-cleaning steps were performed:

1. Imported data using MySQL Import Wizard.
2. Converted date format in Excel to `YYYY-MM-DD` before importing.
3. Checked for import warnings and rejected rows.
4. Identified records containing NULL values.
5. Renamed incorrectly spelled column:

   * `quantiy` → `quantity`

---

## Data Exploration

### Total Sales Transactions

```sql
SELECT COUNT(*) AS total_sales
FROM retail_sales_data;
```

### Total Unique Customers

```sql
SELECT COUNT(DISTINCT customer_id)
FROM retail_sales_data;
```

### Product Categories

```sql
SELECT DISTINCT category
FROM retail_sales_data;
```

---

## Business Problems & Solutions

### 1. Sales Made on a Specific Date

Retrieve all transactions made on a selected date.

### 2. Clothing Sales Analysis

Find clothing transactions where quantity sold is greater than 3 during November 2022.

### 3. Category-wise Sales Performance

Calculate:

* Total orders
* Total revenue

for each category.

### 4. Average Age of Beauty Category Customers

Determine the average age of customers purchasing beauty products.

### 5. High-Value Transactions

Identify transactions with sales greater than ₹1000.

### 6. Gender-wise Transaction Analysis

Analyze the number of transactions by gender across different categories.

### 7. Best Selling Month of Each Year

Using SQL Window Functions (`RANK()`), identify the month with the highest average sales in each year.

### 8. Top 5 Customers

Find customers with the highest total purchase amounts.

### 9. Category-wise Unique Customers

Count distinct customers for each product category.

### 10. Sales Shift Analysis

Classify transactions into shifts:

| Shift     | Time Range         |
| --------- | ------------------ |
| Morning   | Before 12:00 PM    |
| Afternoon | 12:00 PM – 5:59 PM |
| Evening   | After 5:59 PM      |

And calculate the number of orders in each shift.

---

## Key SQL Concepts Used

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* Aggregate Functions

  * COUNT()
  * SUM()
  * AVG()
* CASE Statements
* Window Functions

  * RANK()
* Date Functions

  * YEAR()
  * MONTH()
  * HOUR()
* Subqueries
* DISTINCT
* ALTER TABLE

---

## Insights Generated

* Customer purchasing behavior
* Category-wise sales trends
* Top-performing customers
* Monthly sales performance
* Gender-based purchasing patterns
* Sales distribution across different shifts

---

## Technologies Used

* MySQL 8+
* SQL
* MySQL Workbench
* Microsoft Excel (Data Formatting)

---

## Learning Outcomes

Through this project, I gained hands-on experience with:

* Database design and management
* Data cleaning techniques
* SQL query optimization
* Window functions
* Business data analysis
* Extracting actionable insights from transactional datasets

---

## Author

Aryan Srivastava

Aspiring Java Full Stack Developer with skills in SQL, Java, Spring Boot, React, Database Management, Testing, DevOps, and AI-assisted development.
