# Database Performance Monitoring Report

## Objective
To analyze query execution plans using tools like `EXPLAIN` and `SHOW PROFILE`, identify performance bottlenecks, apply optimizations, and report improvements.

---

## Tools Used
- `EXPLAIN` – to visualize query plans
- `SHOW PROFILE` – to profile query execution time
- `ANALYZE TABLE` – to refresh optimizer statistics

---

## 1. Query #1: Fetch all bookings for a specific user

```sql
SELECT * FROM bookings WHERE user_id = 42;
