# SQL Data Analysis Task – E-commerce Dataset

This repository contains my submission for **Task 3: SQL for Data Analysis** as part of a Data Analyst Internship project. The task focuses on querying and analyzing an e-commerce database using MySQL.

---

## 📁 Contents

- `customers_large.csv` – 1000 synthetic customer records
- `orders_large.csv` – 2000 synthetic orders
- `products_large.csv` – 100 product entries
- `order_items_large.csv` – 3000 order item entries
- `mysql_queries_for_ecommerce.sql` – SQL queries for analysis
- `screenshots/` – Folder containing screenshots of query outputs *(add manually)*

---

## 🧠 Task Objectives

- Use SQL queries to analyze structured data
- Perform JOINS across multiple tables
- Use GROUP BY and aggregate functions (SUM, AVG)
- Write subqueries
- Extract business insights from an e-commerce dataset

---

## ✅ Queries Included

- Customers with at least one order
- Total spending per customer
- Most frequently ordered products
- Average order value (AOV)
- Monthly order trends
- Full order breakdown (JOINs)
- Most valuable order

---

## 💻 Tools Used

- **MySQL**
- **Faker** (for dataset generation)
- **Pandas** (for CSV generation)

---

## 🛠️ How to Import CSVs into MySQL

1. Create a database:
   ```sql
   CREATE DATABASE ecommerce_data;
   USE ecommerce_data;
   ```

2. Create tables using appropriate schema (you can infer it from the CSV headers).

3. Import CSV files:
   ```sql
   LOAD DATA LOCAL INFILE '/path/to/customers_large.csv'
   INTO TABLE customers
   FIELDS TERMINATED BY ',' ENCLOSED BY '"'
   LINES TERMINATED BY '\n'
   IGNORE 1 ROWS;
   ```

   *(Repeat for orders, products, and order_items)*

   > 💡 Note: Ensure that the `local_infile` system variable is enabled and the file path is accessible.

---

## 📚 Learnings

This project helped me:
- Strengthen SQL query and data manipulation skills
- Understand table joins and relationships
- Derive insights from relational e-commerce data

---

Feel free to explore, fork, or contribute!
