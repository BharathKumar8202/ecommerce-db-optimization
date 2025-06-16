# E-commerce Data Simulation — Day 1

## Overview

On Day 1, we focused on constructing a simulated e-commerce dataset using Python, PostgreSQL, and the Faker library. The objective was to design a realistic relational database suitable for querying, analytics, and exploring advanced topics such as query optimization and search algorithms.

---

## What We Did

### Database Setup
We created the following tables:
- `customers`
- `products`
- `orders`
- `order_details`

### Environment Configuration
- Used a `.env` file for secure, environment-based database connection handling.

### Data Insertion
- Inserted 10,000 customers, each with at least a phone number or email address.
- Inserted 1,000 products with randomized names and realistic pricing.
- Generated 5,000 orders, each linked to a valid customer.
- Populated 10,000 order details, mapping orders to products.

### Efficiency and Integrity
- Used `executemany()` for batch inserts to improve performance.
- Maintained referential integrity using valid foreign key IDs.
- Ensured proper cleanup by closing cursors and database connections to prevent resource leaks or transactional issues.

---

## What’s Next

On Day 2, we will:
- Write SQL queries to explore and extract insights from the dataset.
- Perform joins, aggregations, and apply query optimization techniques to enhance performance.

---

Stay tuned for more.
