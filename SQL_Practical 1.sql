--Create Table addresses

CREATE TABLE addresses(address_id INT NOT NULL,
number VARCHAR(20), 
street VARCHAR(100), 
city VARCHAR(100), 
PRIMARY KEY(address_id));

--Insert Data into addresses

INSERT INTO addresses VALUES
(1, '1', 'Lygon St', 'Edinburgh'),
(2, '54', 'James St', 'Edinburgh'),
(3, '11', 'Crammond Rd', 'London');

--View data

SELECT * FROM addresses;

--Create Table customers

CREATE TABLE customers (
customer_id INT NOT NULL , 
name VARCHAR(100), 
DoB DATE, 
address_id INT, 
PRIMARY KEY( customer_id ));

--Insert Data into customers

INSERT INTO customers VALUES
(4, 'Larry Henderson', '1970-01-29', 3),
(5, 'Margaret Jackson', '1950-11-16', 2),
(6, 'Tony Smith', '1980-12-11', 1);

--Join operation showing names of customers and their full addresses

SELECT name, number, street ,city
FROM customers
JOIN addresses 
 ON customers.address_id = addresses.address_id

 --List of all the customers from Edinburgh

SELECT name, number, street ,city
FROM customers
JOIN addresses 
 ON customers.address_id = addresses.address_id
WHERE city = 'Edinburgh'

--Find the number of customers in each city

SELECT city, COUNT(name) AS numofcustomers
FROM customers
JOIN addresses 
 ON customers.address_id = addresses.address_id
GROUP BY city

--

SELECT name,city,DoB
FROM customers
JOIN addresses 
 ON customers.address_id = addresses.address_id
 ORDER BY DoB 
