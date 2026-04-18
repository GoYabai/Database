CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

COPY customers(id, name)
FROM 'C:\\Project\\Database\\Customers_Without_Orders\\customers.csv'
DELIMITER ','
CSV HEADER;

COPY orders(id, customer_id)
FROM 'C:\\Project\\Database\\Customers_Without_Orders\\orders.csv'
DELIMITER ','
CSV HEADER;

-- Not in
SELECT name
FROM customers
WHERE id NOT IN (
    SELECT customer_id 
    FROM orders
);

-- Left-join
SELECT c.name AS Customers
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
WHERE o.customer_id IS NULL;