-- Create Database for Car Selling:
CREATE DATABASE IF NOT EXISTS car_selling;
USE car_selling;

-- Create tables:
CREATE TABLE IF NOT EXISTS car (
	car_id INT PRIMARY KEY,
	VIN CHAR(17),
    manufacturer VARCHAR(15) NOT NULL,
    model VARCHAR(20),
    year YEAR,
    color VARCHAR(10),
    fuel_type VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS customer (
	customer_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL, 
    phone_number VARCHAR(20),
    email VARCHAR(60),
    address VARCHAR(30),
    city VARCHAR(15),
    province VARCHAR(15),
    country VARCHAR(15),
    zip VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS sales_person (
	staff_id INT PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
    store VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS invoice (
	invoice_number INT PRIMARY KEY,
    date DATE,
    car INT,
    customer INT,
    salesperson INT
);