CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    salary INT,
    managerID INT
);

COPY Employees(id, name, salary, managerID)
FROM 'C:\\Project\\Database\\Employees_Earning_More_Than_Their_Managers\\Employee.csv'
DELIMITER ','
CSV HEADER;


SELECT e.name AS Employee
FROM Employee e
LEFT JOIN Employee m ON e.managerID = m.id
WHERE e.salary > m.salary;