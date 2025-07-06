# Partition Performance Report

## Objective
To improve query performance on a large `bookings` table by partitioning the table by `start_date`. This allows queries to scan only relevant partitions instead of the entire table.

---

## Partitioning Strategy

We partitioned the `bookings` table by `YEAR(start_date)` using RANGE partitioning. This is effective because most queries filter bookings by a date range.

**SQL Partitioning Command:**  
See `partitioning.sql` for the full script.

---

## Performance Test

### Query Tested:

```sql
SELECT * FROM bookings
WHERE start_date BETWEEN '2022-01-01' AND '2022-12-31';
