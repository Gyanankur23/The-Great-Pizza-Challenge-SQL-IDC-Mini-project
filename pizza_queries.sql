-- pizza_queries.sql

-- Phase 1 — Foundation & Inspection
SELECT DISTINCT category FROM pizza_types;

SELECT pizzatypeid, name, COALESCE(ingredients, 'Missing Data') AS ingredients
FROM pizza_types
LIMIT 5;

-- Phase 2 — Filtering & Exploration
SELECT * FROM orders WHERE date = '2023-01-01';

SELECT * FROM pizzas WHERE price BETWEEN 15 AND 17;

SELECT * FROM pizza_types WHERE name LIKE '%Chicken%';

-- Phase 3 — Sales Performance
SELECT SUM(quantity) AS quantitysold FROM order_details;

SELECT ROUND(AVG(price), 2) AS avg_price FROM pizzas;

-- Phase 4 — Category Insights
SELECT pt.category, SUM(od.quantity) AS total_quantity
FROM order_details od
JOIN pizzas p ON od.pizzaid = p.pizzaid
JOIN pizzatypes pt ON p.pizzatypeid = pt.pizzatype_id
GROUP BY pt.category;
