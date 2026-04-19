CREATE TABLE Person (
    personId INT PRIMARY KEY,
    lastName VARCHAR(255),
    firstName VARCHAR(255)
);

CREATE TABLE Address (
    addressId INT PRIMARY KEY,
    personId INT,
    city VARCHAR(255),
    state VARCHAR(255)
    -- FOREIGN KEY (personId) REFERENCES Person(personId)
);

COPY Person(personId, lastName, firstName)
FROM 'C:\\Project\\Database\\Combine_two_table.cpp\\Person.csv'
DELIMITER ','
CSV HEADER;

COPY Address(addressId, personId, city, state)
FROM 'C:\\Project\\Database\\Combine_two_table.cpp\\Address.csv'
DELIMITER ','
CSV HEADER;

SELECT 
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM Person p
LEFT JOIN Address a ON a.personId = p.personId;
