
DROP DATABASE IF EXISTS cars;

-- 1 open data set
CREATE DATABASE lab_mysql;
USE lab_mysql;

-- 2. Create tables
-- 2.1 table : cars
CREATE TABLE IF NOT EXISTS cars (
	vin VARCHAR(40) PRIMARY KEY,
	manufacturer VARCHAR(40) NOT NULL,
	model VARCHAR(40) NOT NULL,
	car_year DATE, 
	colour VARCHAR(20) NOT NULL
);

-- 2.2 table : customers
CREATE TABLE IF NOT EXISTS customers (
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(40) NOT NULL,
	phone_no VARCHAR(20) NOT NULL,
    city VARCHAR(40) NOT NULL,
    zip_code CHAR(5) NOT NULL
);

-- 2.3 table : salespersons
CREATE TABLE IF NOT EXISTS salespersons (
	staff_id INT PRIMARY KEY,
	staff_name VARCHAR(40) NOT NULL,
	store VARCHAR(40) NOT NULL
);

-- 2.4 table : invoices
CREATE TABLE IF NOT EXISTS invoices (
	invoice_id INT PRIMARY KEY,
	invoice_date DATE,
    cars INT,
	customers INT,
	salespersons INT
);




-- 3. Alter: FK
-- 3.4. Altering invoices table: customers column
ALTER TABLE invoices
	ADD FOREIGN KEY (customers) -- in customers table
REFERENCES customers(customer_id) -- primary key on cars table
ON DELETE CASCADE;

-- 3.5. Altering invoices table: cars column
ALTER TABLE invoices
	ADD FOREIGN KEY (cars) -- in customers table
REFERENCES cars(vin) -- primary key on cars table
ON DELETE CASCADE;

-- 3.6. Altering invoices table: salespersons column
ALTER TABLE invoices
	ADD FOREIGN KEY (salespersons) -- in customers table
REFERENCES salespersons(staff_id) -- primary key on cars table
ON DELETE CASCADE;



