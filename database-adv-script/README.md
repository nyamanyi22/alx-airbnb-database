# 📊 Advanced SQL: Querying Power

This section covers advanced SQL skills applied to a real-world Airbnb-like database system. Tasks include writing complex queries, applying indexing, optimizing performance, and partitioning large tables for improved scalability.

---

## 🗂️ Files & Tasks Overview

### `joins_queries.sql`
- 🔁 Uses INNER JOIN to fetch all bookings with the user who made them
- 🔗 Uses LEFT JOIN to fetch all properties and their reviews (if any)
- 🌐 Uses FULL OUTER JOIN to retrieve all users and bookings (even unmatched ones)

---

### `subqueries.sql`
- 🏠 Finds properties with an average rating > 4.0 (non-correlated)
- 👤 Retrieves users who made more than 3 bookings (correlated)

---

### `aggregations_and_window_functions.sql`
- 📊 Uses `COUNT()` and `GROUP BY` to count bookings per user
- 🏆 Uses `ROW_NUMBER()` or `RANK()` to rank properties by number of bookings

---

### `database_index.sql`
- ⚡ Creates indexes on high-usage columns like `user_id`, `property_id`, `start_date`
- 🧪 Used `EXPLAIN` to compare performance before and after indexing

📝 Notes documented in: `index_performance.md`

---

### `perfomance.sql`
- 🧵 Joins data from Bookings, Users, Properties, and Payments
- 🔍 Initial performance analyzed with `EXPLAIN`
- 🛠️ Refactored for optimization (e.g., fewer joins, indexed columns)

📝 Optimization notes in: `optimization_report.md`

---

### `partitioning.sql`
- 🧱 Partitions the large `Booking` table by `start_date` (RANGE-based partitioning)
- 🚀 Improves date-range query performance

📝 Analysis in: `partition_performance.md`

---

### `performance_monitoring.md`
- 📈 Monitored slow queries using `EXPLAIN ANALYZE`
- 🧠 Identified bottlenecks, recommended schema/index changes
- ✅ Documented the improvements after changes

---

## 🧠 Learning Outcomes

- Mastered SQL joins, subqueries, aggregations, and window functions
- Implemented indexes to improve database performance
- Used performance analysis tools to optimize slow queries
- Applied partitioning to scale query performance with large datasets
- Learned to think like a Database Administrator (DBA)

---

## 🧑‍💻 Author

Elizabeth Omari  
GitHub: [@nyamanyi22](https://github.com/nyamanyi22)  
Project: ALX Software Engineering – ProDev Backend Track  
Module: Airbnb Advanced Database

---

## ✅ Tech Stack

- SQL (MySQL-compatible)
- Performance tools: `EXPLAIN`, `SHOW PROFILE`, `ANALYZE`
- Git & GitHub for version control

---

## 📬 Submission

All tasks are implemented in this folder and linked correctly as per ALX requirements.
# Advanced SQL Queries – Joins

This file contains advanced SQL queries demonstrating various types of JOIN operations on the Airbnb database schema.

## File: joins_queries.sql

### 1. INNER JOIN – Bookings with Users
This query retrieves all bookings along with the users who made them. It uses `INNER JOIN` to return only matching records from both tables.

### 2. LEFT JOIN – Properties with Reviews (if any)
This query retrieves all properties and their associated reviews. Properties with no reviews are still shown with `NULL` values for review fields.

### 3. FULL OUTER JOIN – Users and Bookings (even unmatched)
Since MySQL doesn’t support `FULL OUTER JOIN` directly, this query uses a `UNION` of `LEFT JOIN` and `RIGHT JOIN` to combine users and bookings regardless of whether they are linked.

---

## How to Run

Use a SQL environment like MySQL Workbench, phpMyAdmin, or the MySQL CLI. Make sure the Airbnb database schema and tables (`users`, `bookings`, `properties`, `reviews`) already exist.

```bash
mysql -u your_user -p your_database < joins_queries.sql

---

## Subqueries

### 1. Properties with Average Rating > 4.0
This query uses a **non-correlated subquery** to select property IDs from the `reviews` table where the average rating exceeds 4.0, and then fetches those properties from the `properties` table.

### 2. Users with More Than 3 Bookings
This query uses a **correlated subquery** to count bookings for each user directly inside the `WHERE` clause. It only returns users whose booking count is greater than 3.

---

## Aggregations and Window Functions

### 1. Total Bookings per User
This query uses the `COUNT()` function with `GROUP BY` to calculate how many bookings each user has made. A `LEFT JOIN` ensures even users with 0 bookings are shown.

### 2. Ranking Properties by Popularity
This query uses the `RANK()` window function to assign a rank to each property based on how many bookings it has received. Ties receive the same rank.

These queries help identify active users and the most booked properties in the Airbnb dataset.



