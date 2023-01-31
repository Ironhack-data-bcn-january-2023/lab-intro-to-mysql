DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE car (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(30) NOT NULL,
	manufacturer VARCHAR(20) NOT NULL,
	model VARCHAR(20) NOT NULL,
	year INT NOT NULL,
	color VARCHAR(20) NOT NULL
);

CREATE TABLE customers (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    client_name VARCHAR(20) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(20),
	address VARCHAR(20),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20),
	zip VARCHAR(10)
);

CREATE TABLE salesperson( 
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_id INT NOT NULL,
    sales_name VARCHAR(20) NOT NULL,
    store VARCHAR(20) NOT NULL,
    phone_no VARCHAR(20),
    client INT -- This will the Foreign key from client
);

CREATE TABLE invoice (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL,
    date DATE NOT NULL,
    car INT,
    customer INT,
    salesperson INT
);