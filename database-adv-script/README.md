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

