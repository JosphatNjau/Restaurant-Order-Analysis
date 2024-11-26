-- order details table
SELECT *
FROM order_details;

-- data range of the table
SELECT MIN(order_date), MAX(order_date)
FROM order_details;

-- # of orders made within the date range
SELECT COUNT(DISTINCT order_id)
FROM order_details;

-- # of items ordered within the date range
SELECT COUNT(*)
FROM order_details;

-- orders with the most number of items
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- # of orders with more than 12 items
SELECT COUNT(*)
FROM (SELECT order_id, COUNT(item_id) AS num_items
	FROM order_details
	GROUP BY order_id
	HAVING COUNT(item_id) > 12) AS num_orders;