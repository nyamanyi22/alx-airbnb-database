# Normalization Explanation – Airbnb Database

## 1. Introduction

This document outlines the normalization process applied to the Airbnb database schema to ensure it adheres to the Third Normal Form (3NF). The goal is to eliminate redundancy and ensure data integrity across all entities.

---

## 2. First Normal Form (1NF)

All tables meet 1NF by:
- Having unique rows.
- Using atomic (indivisible) values.
- Avoiding repeating groups or arrays.

Example: In the `users` table, `phone_number` is a single value per row, not a list.

---

## 3. Second Normal Form (2NF)

Since none of the tables use **composite primary keys**, there are no partial dependencies.

All non-key attributes are fully functionally dependent on their table's primary key.

Example:
- In the `bookings` table, `start_date`, `end_date`, and `total_price` depend only on `booking_id`.

---

## 4. Third Normal Form (3NF)

All non-key attributes are:
- Directly dependent on the primary key.
- Not transitively dependent on another non-key attribute.

No fields are derived or stored redundantly.

Example:
- In the `properties` table, `host_id` is a foreign key, and all other attributes like `location`, `price_per_night`, and `description` directly depend on `property_id`.

---

## 5. Conclusion

The final database schema is fully normalized to 3NF. Each table contains atomic attributes, no partial dependencies, and no transitive dependencies.

This structure ensures:
- Efficient data storage.
- Simplified queries and updates.
- Enhanced data integrity and consistency.


