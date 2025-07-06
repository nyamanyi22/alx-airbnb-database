# Index Performance Report

## Objective
To improve the performance of frequently run queries on the Airbnb database by identifying slow queries and applying appropriate indexes to optimize them.

---

## 1. Identifying Bottlenecks

We observed the following common query patterns during analysis:

- Frequent filtering of bookings by `user_id`, `start_date`
- Joins between:
  - `bookings.user_id` and `users.id`
  - `bookings.property_id` and `properties.id`
  - `reviews.property_id` and `properties.id`

Using `EXPLAIN`, we analyzed the performance of these queries before indexing.

---

## 2. Indexes Added

```sql
CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON bookings(property_id);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
CREATE INDEX idx_start_date ON bookings(start_date);
