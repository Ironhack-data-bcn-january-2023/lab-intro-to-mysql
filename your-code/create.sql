CREATE DATABASE lab_mysql_v4;
USE lab_mysql_v4;

CREATE TABLE IF NOT EXISTS car (
	Car_ID INT PRIMARY KEY,
    VIN VARCHAR(40) NOT NULL,
    Manufacturer VARCHAR(40) NOT NULL,
    Model VARCHAR(40) NOT NULL,
    Year YEAR NOT NULL,
    Color VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS customers (
	Cust_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Name VARCHAR(40) NOT NULL,
    Phone_no VARCHAR(40) NOT NULL,
    Email VARCHAR(40),
    Adress VARCHAR(40),
    City VARCHAR(40),
    State VARCHAR(40),
    Country VARCHAR(40),
    Zip_CP VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS salespeople (
	Salespeople_ID INT PRIMARY KEY,
    Staff_ID INT NOT NULL,
    Name VARCHAR(40) NOT NULL,
    Store VARCHAR(40) NOT NULL
);

CREATE TABLE invoices (
	ID INT PRIMARY KEY,
    Invoice_no INT NOT NULL,
    Date DATE NOT NULL,
    car INT NOT NULL, -- FK of Car_ID
    customers INT NOT NULL, -- FK of Cust_ID
    salespeople INT NOT NULL -- FK of Salespeople_ID
);

ALTER TABLE invoices
	ADD FOREIGN KEY (car) -- on invoices table
REFERENCES car(Car_ID) -- primary key on car table -> now it is also FK in invoices
ON DELETE CASCADE;

ALTER TABLE invoices
	ADD FOREIGN KEY (customers) -- on invoices table
REFERENCES customers(Cust_ID) -- primary key on car table -> now it is also FK in invoices
ON DELETE CASCADE;

ALTER TABLE invoices
	ADD FOREIGN KEY (salespeople) -- on invoices table
REFERENCES salespeople(Salespeople_ID) -- primary key on car table -> now it is also FK in invoices
ON DELETE CASCADE;