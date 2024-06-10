USE hw03;
SELECT COUNT(*) AS total_orders
FROM joined_table
-- p4-2 
USE hw03;
CREATE TABLE joined_table AS 
SELECT 
	orders.id order_id,
    orders.date order_date,    
    order_details.quantity order_quantity,    
    products.name product_name,
	products.id product_id,
    products.unit product_unit,
    products.price product_price,    
	categories.name categories,
    categories.description category_description, 
    
	suppliers.name supplier,
    suppliers.contact supplier_contact,
    suppliers.address supplier_address,
	suppliers.city supplier_city,
	suppliers.postal_code supplier_postal_code,
	suppliers.country supplier_country,
	suppliers.phone supplier_phone,	    
    shippers.name shipper,
    shippers.phone shipper_phone,  
    
	employees.last_name employee_last_name,
    employees.first_name employee_first_name,
    employees.birthdate employee_birthdate,
    employees.photo employee_photo,
    employees.notes employee_notes,
    
    customers.name customer,
    customers.contact customer_contact,
    customers.address customer_address,
    customers.city customer_city,
    customers.postal_code customer_postal_code,
    customers.country customer_country
    
    FROM orders 
    INNER JOIN order_details ON orders.id = order_details.order_id
    LEFT JOIN products ON products.id = order_details.product_id
    RIGHT JOIN categories ON categories.id = products.category_id
	INNER JOIN suppliers ON suppliers.id = products.supplier_id
    INNER JOIN shippers ON shippers.id = orders.shipper_id
    INNER JOIN employees ON employees.employee_id = orders.employee_id
    INNER JOIN customers ON customers.id = orders.customer_id
    

-- I think if changing from INNER JOIN to LEFT or RIGHT JOIN didn't alter the query results, 
-- it likely means that all referenced rows in the join condition were present in both tables, causing all join types to return the same rows.

-- p4-3

USE hw03;
SELECT * FROM joined_table
WHERE employee_id > 3 AND employee_id <= 10 

-- p4-4 

USE hw03;
SELECT categories, ROUND(AVG(order_quantity)) AS average_quantity, COUNT(*) AS total_orders 
FROM joined_table
WHERE employee_id > 3 AND employee_id <= 10 
GROUP BY categories

-- p4-5 

USE hw03;
SELECT categories, ROUND(AVG(order_quantity)) AS average_quantity, COUNT(*) AS total_orders 
FROM joined_table
WHERE employee_id > 3 AND employee_id <= 10 
GROUP BY categories
HAVING average_quantity > 21

-- p4-6 

USE hw03;
SELECT categories, ROUND(AVG(order_quantity)) AS average_quantity, COUNT(*) AS total_orders 
FROM joined_table
WHERE employee_id > 3 AND employee_id <= 10 
GROUP BY categories
HAVING average_quantity > 21
ORDER BY total_orders DESC

-- p4-7 

USE hw03;
SELECT categories, ROUND(AVG(order_quantity)) AS average_quantity, COUNT(*) AS total_orders 
FROM joined_table
WHERE employee_id > 3 AND employee_id <= 10 
GROUP BY categories
HAVING average_quantity > 21
ORDER BY total_orders DESC
LIMIT 4 
OFFSET 1 