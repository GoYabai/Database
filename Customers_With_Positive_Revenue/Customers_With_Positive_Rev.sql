CREATE TABLE Customers_With_Positive_Revenue (
    customer_id INT,
    year INT,
    revenue INT
);

COPY Customers_With_Positive_Revenue(customer_id, year, revenue)
FROM 'C:\\Project\\Database\\Customers_With_Positive_Revenue.csv'
DELIMITER ','
CSV HEADER;


select customer_id
from Customers_With_Positive_Revenue
where revenue > 0 and year = 2020