CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE IF NOT EXISTS Cars(
	car_id INT PRIMARY KEY,
    VIN INT UNIQUE,
    Manufacturer VARCHAR(20),
    Model VARCHAR(20),
    Color VARCHAR(20),
    Year YEAR 
);
CREATE TABLE IF NOT EXISTS Customers(
	costumer_id INT PRIMARY KEY,
    FullName VARCHAR(20),
    Phone VARCHAR(20),
    Email VARCHAR(20),
    Address VARCHAR(40),
    City VARCHAR(20),
    State_Province VARCHAR(20),
    Country VARCHAR(20),
    Postal INT(5)
    );
CREATE TABLE IF NOT EXISTS Salespersons(
	Staff_ID INT PRIMARY KEY,
    fname VARCHAR(20),
    Store VARCHAR(20)
);
USE lab_mysql;