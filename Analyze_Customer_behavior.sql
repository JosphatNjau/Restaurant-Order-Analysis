-- combininig the two tables
-- keeping all records in the order_details table
SELECT *
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id;

-- least and most ordered items and categories they're in
SELECT mi.item_name, mi.category, COUNT(order_details_id) AS num_purchases
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id
WHERE mi.item_name IS NOT NULL
GROUP BY mi.item_name, mi.category
ORDER BY num_purchases
LIMIT 3;

-- most ordered
SELECT mi.item_name, mi.category, COUNT(order_details_id) AS num_purchases
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id
WHERE mi.item_name IS NOT NULL
GROUP BY mi.item_name, mi.category
ORDER BY num_purchases DESC
LIMIT 3;

-- top 5 orders that spent the most money
SELECT od.order_id, sum(mi.price) AS total_amount
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id
GROUP BY od.order_id
ORDER BY total_amount DESC
LIMIT 5;

-- the highest spend order details
SELECT mi.category, COUNT(od.item_id) AS num_items
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id
WHERE od.order_id = 440
GROUP BY mi.category;

-- top 5 highest spend orders
SELECT od.order_id, mi.category, COUNT(od.item_id) AS num_items
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id
WHERE od.order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY od.order_id, mi.category;