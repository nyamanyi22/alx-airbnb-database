# Optimization Report

## Task Objective

Optimize a complex SQL query joining `bookings`, `users`, `properties`, and `payments` tables to improve performance.

---

## Initial Query Performance

The original query retrieved all booking details, user info, property details, and payment data using multiple `JOIN`s. Running:

```sql
EXPLAIN SELECT ...
