# ER Diagram for Airbnb Database
# Airbnb Database – Entity Relationship Diagram (ERD)

## Overview

This document presents the Entity-Relationship Diagram (ERD) for an Airbnb-like platform. The design includes all required entities, their attributes, and relationships according to the project specification.

## Entities

- **Users** – Guests, Hosts, Admins with authentication and contact details.
- **Properties** – Listings created by hosts with location, price, and description.
- **Bookings** – Reservations made by guests for specific properties.
- **Payments** – Payment records linked to bookings.
- **Reviews** – Feedback left by guests for properties.
- **Messages** – Communication between users.

## Relationships

| Entity 1 | Relation     | Entity 2     | Cardinality |
|----------|--------------|--------------|-------------|
| User     | hosts        | Property     | 1:N         |
| User     | makes        | Booking      | 1:N         |
| Property | has          | Booking      | 1:N         |
| Booking  | has          | Payment      | 1:1         |
| Property | receives     | Review       | 1:N         |
| User     | writes       | Review       | 1:N         |
| User     | sends        | Message      | 1:N         |
| User     | receives     | Message      | 1:N         |

## ERD Diagram

The diagram below visualizes all the entities and how they relate to each other.

![ER Diagram](image.png)
---

## Notes

- UUIDs are used as primary keys for scalability and uniqueness.
- Foreign keys enforce relational integrity between entities.
- ENUM types are used for roles, statuses, and payment methods.

