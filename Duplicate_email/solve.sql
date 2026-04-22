DROP TABLE IF EXISTS ten_bang_cu;


CREATE TABLE Person (
    id INT PRIMARY KEY,
    email VARCHAR(255)
);

COPY Person(id, email)
FROM 'C:\\Project\\Database\\Duplicate_email\\Person.csv'
DELIMITER ','
CSV HEADER;


SELECT email
FROM Person
GROUP BY email
HAVING count(*) > 1;