# Database Seeding – Airbnb Clone

## Objective

This file provides sample data to populate the Airbnb-like relational database for development and testing purposes.

## Contents

The seed includes realistic entries for:
- Users: Guest, Host, Admin
- Properties: Hosted by a real host
- Bookings: Two sample bookings by a guest
- Payments: Linked to each booking
- Reviews: Submitted by a guest for a property
- Messages: Direct message from guest to host

## Usage

To seed the database, run:

```bash
mysql -u [username] -p [database_name] < seed.sql
