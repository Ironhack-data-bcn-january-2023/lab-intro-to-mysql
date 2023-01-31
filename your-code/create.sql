
DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;


CREATE TABLE IF NOT EXISTS CAR (
	vim VARCHAR(30) PRIMARY KEY,
	manufacturer VARCHAR(30) NOT NULL,
	model VARCHAR(30) NOT NULL, 
	year YEAR(4),
	color VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS customer (
	customer_id INT PRIMARY KEY,
    cust_name VARCHAR(40) NOT NULL,
    phone_number VARCHAR(40),
    email VARCHAR(40),
    address VARCHAR(40),
    city VARCHAR(40),
    state VARCHAR(40), 
    country VARCHAR(40), 
    postal VARCHAR(20)
    
);

CREATE TABLE IF NOT EXISTS salesperson (
	staff_id INT PRIMARY KEY,
    staff_name VARCHAR(20) NOT NULL, 
    store_name VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS invoices (
	invoice_number INT PRIMARY KEY,
    order_date DATE NOT NULL,
    vim  INT NOT NULL, 
    customer_id INT NOT NULL,
    staff_id INT NOT NULL
);