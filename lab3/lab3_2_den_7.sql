-- 2
SELECT customer_id, first_name, last_name, email
FROM customers
WHERE city = 'New York'
ORDER BY last_name ASC, first_name ASC;

-- 3
SELECT product_id, product_name, list_price
FROM products
WHERE product_name LIKE '%City%'
ORDER BY product_name ASC;

-- 4
SELECT order_id, customer_id, order_date, store_id, staff_id
FROM orders
WHERE order_date BETWEEN '2025-08-05' AND '2025-08-15'
ORDER BY order_date ASC;

-- 5 
SELECT product_id, product_name, list_price
FROM products
WHERE list_price = (
    SELECT MIN(list_price) 
    FROM products
);

-- 6
SELECT s.store_id, st.store_name, SUM(s.quantity) AS total_qty_in_stock
FROM stocks s
JOIN stores st ON s.store_id = st.store_id
GROUP BY s.store_id, st.store_name
ORDER BY total_qty_in_stock DESC, s.store_id ASC;

Select store_id,quantity from stocks;
Select store_name from stores;

-- 7
SELECT p.category_name, p.product_id, p.product_name, p.list_price
FROM products p
JOIN (
    SELECT category_name, MAX(list_price) AS max_price
    FROM products
    GROUP BY category_name
) top_price 
    ON p.category_name = top_price.category_name 
   AND p.list_price = top_price.max_price
ORDER BY p.category_name ASC, p.product_id ASC;

select category_name from products;
select product_name, list_price from products;