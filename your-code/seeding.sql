CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE IF NOT EXISTS Cars(
	car_id INT PRIMARY KEY,
    VIN VARCHAR(20),
    Manufacturer VARCHAR(20),
    Model VARCHAR(20),
    Color VARCHAR(20),
    Year CHAR(4) 
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
CREATE TABLE IF NOT EXISTS Invoices(
	Invoice_id INT PRIMARY KEY,
    Invoice_number INT UNIQUE,
    Date DATE,
    Car INT,
    Customer INT,
    Sales_Person INT
);
INSERT INTO Cars VALUES
	(0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan","Blue", "2019"),
    (1, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "Red", "2019"),
    (2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "White", "2018"),
    (3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", "Silver", "2018"),
    (4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", "Gray", "2019"),
    (5, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country" , "Gray", "2019");
    
INSERT INTO Customers VALUES
(0, "Pablo Picasso", "+34636176382", "-", "Paseo de la Chopera 14", "Madrid", "Madrid", "Spain", 28045),
(1, "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida", "United States", 33130),
(2, "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);

INSERT INTO Salespersons VALUES
(0, "Petey Cruiser", "Madrid"),
(1, "Anna Sthesia", "Barcelona"),
(2, "Paul Molive", "Berlin"),
(3, "Gail Forcewind", "Paris"),
(4, "Paige Turner", "Mimia"),
(5, "Bob Frapples", "Mexico City"),
(6, "Walter Melon", "Amsterdam"),
(7, "Shonda Leer", "São Paulo");

INSERT INTO Invoices VALUES
(0, "852399038", "2018-08-22", 0, 1, 3),
(1, "731166526", "2018-12-31", 3, 0, 5),
(2, "271135104", "2019-01-22", 2, 2, 7);
