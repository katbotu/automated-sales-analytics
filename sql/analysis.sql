-- AUTOMATED SALES ANALYTICS
-- Analyse des ventes

-- Chiffre d'affaires total
SELECT SUM(revenue) AS total_revenue
FROM sales;

-- Nombre de commandes
SELECT COUNT(*) AS total_orders
FROM sales;

-- Panier moyen
SELECT ROUND(AVG(revenue), 2) AS average_order_value
FROM sales;

-- CA par produit
SELECT
    product,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;

-- CA par catégorie
SELECT
    category,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

-- CA par région
SELECT
    region,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

-- Évolution du CA
SELECT
    order_date,
    SUM(revenue) AS daily_revenue
FROM sales
GROUP BY order_date
ORDER BY order_date;