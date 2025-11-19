# 🍕 Pizza Analytics Challenge

This repository contains SQL queries used to explore and analyze a synthetic pizza sales database. The queries are structured across four phases, each focusing on a different aspect of data inspection, filtering, performance, and category insights.

## 📦 Dataset Structure

The database includes four tables:

- `pizza_types`: pizza_type_id, name, category, ingredients  
- `pizzas`: pizza_id, pizza_type_id, size, price  
- `orders`: order_id, date, time  
- `order_details`: order_details_id, order_id, pizza_id, quantity  

## 📑 File Included

- `pizza_queries.sql`: All SQL queries used in the challenge, organized by phase.

## 🧠 Topics Covered

- DISTINCT, COALESCE, LIKE, BETWEEN  
- Aggregations: SUM, AVG  
- Filtering by date, price, and keywords  
- JOIN operations across multiple tables  
- GROUP BY and HAVING for category-level insights

## ✅ Execution

These queries were executed on a PostgreSQL database hosted in Supabase.  
No external dependencies required — just import the schema and run the SQL file.

---
