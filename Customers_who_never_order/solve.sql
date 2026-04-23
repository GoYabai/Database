DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;


CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE orders (
    id INT PRIMARY KEY,
    customerId INT
)

COPY customers(id, name)
FROM 'C:\\Project\\Database\\Customers_who_never_order\\customers.csv'
DELIMITER ','
CSV HEADER;

COPY orders(id, customerId)
FROM 'C:\\Project\\Database\\Customers_who_never_order\\orders.csv'
DELIMITER ','
CSV HEADER;


SELECT c.name AS Customers
FROM Customers c LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.customerId IS NULL;
