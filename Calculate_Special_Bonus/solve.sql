CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    salary INT
);

COPY employees(employee_id, name, salary)
FROM 'C:\\Project\\Database\\Calculate_Special_Bonus\\employees.csv'
DELIMITER ','
CSV HEADER;

SELECT
    employee_id,
    CASE
        WHEN employee_id % 2 != 0 AND name NOT LIKE 'M%' THEN salary
        ELSE 0
    END AS bonus
FROM employees
ORDER BY employee_id;


