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
    INNER JOIN products ON products.id = order_details.product_id
    INNER JOIN categories ON categories.id = products.category_id
	INNER JOIN suppliers ON suppliers.id = products.supplier_id
    INNER JOIN shippers ON shippers.id = orders.shipper_id
    INNER JOIN employees ON employees.employee_id = orders.employee_id
    INNER JOIN customers ON customers.id = orders.customer_id