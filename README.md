# ALX Airbnb Database Project

This project is part of the ALX Backend specialization and simulates a real-world Airbnb-like platform. It focuses on robust database design, normalization, and SQL scripting for schema creation and data seeding.

---

## 📁 Project Structure

| Directory | Purpose |
|----------|---------|
|  | Contains the Entity-Relationship Diagram (ERD) and explanation |
| `database-script-0x01/` | SQL scripts to create the database schema (DDL) |
| `database-script-0x02/` | SQL scripts to populate the database with sample data (DML) |

---

## 🧩 Features

- Entity-Relationship design in Draw.io
- Fully normalized schema to 3NF
- MySQL-compatible DDL script with constraints and indexing
- Realistic seed data for users, properties, bookings, payments, etc.

---

## 🧱 Entities & Relationships

- **User**: guests, hosts, and admins
- **Property**: listed by a host
- **Booking**: reservations by guests
- **Payment**: linked to bookings
- **Review**: feedback on properties
- **Message**: internal communication between users

---

## 📊 Normalization

The database is normalized to **Third Normal Form (3NF)**:
- Removed partial and transitive dependencies
- Eliminated redundancy in user and property attributes
- All non-key attributes depend only on the primary key

See [`normalization.md`](./normalization.md) for detailed steps.

---

## 🧠 How to View ERD

The ERD was created using [Draw.io](https://app.diagrams.net).

- File: [`airbnb-er-diagram.drawio.xml`](./ERD/airbnb-er-diagram.drawio.xml)
- Open it directly in Draw.io or import to view/edit

---

## 🗂️ Schema (DDL)

- File: [`schema.sql`](./database-script-0x01/schema.sql)
- SQL statements to create tables, primary keys, foreign keys, and constraints

---

## 🌱 Seed Data (DML)

- File: [`seed.sql`](./database-script-0x02/seed.sql)
- Inserts sample records for testing and demonstration

---

## ✅ Requirements

- MySQL 5.7+ or MariaDB
- SQL syntax compatible with MySQL
- Git and GitHub

---

## ✍️ Author

Elizabeth Omari  
GitHub: [@nyamanyi22](https://github.com/nyamanyi22)

