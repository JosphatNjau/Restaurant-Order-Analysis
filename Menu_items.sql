USE restaurant_db;

-- view menu items table
SELECT *
FROM menu_items;

-- number of items on the menu
SELECT COUNT(*)
FROM menu_items;

-- least and most expensive items on the menu
SELECT *
FROM menu_items
ORDER BY price;

SELECT *
FROM menu_items
ORDER BY price DESC;

-- # of Italian dishes on the menu
SELECT COUNT(*)
FROM menu_items
WHERE category = 'Italian';

-- least and most expensive Italian dishes on the menu
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price;

SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- # of dishes in each category
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

-- average dish price in each category
SELECT category, AVG(price) AS average_price
FROM menu_items
GROUP BY category;