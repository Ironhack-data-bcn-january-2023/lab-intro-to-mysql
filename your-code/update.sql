CREATE DATABASE lab_mysql_v5;
USE lab_mysql_v5;

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

INSERT INTO car
VALUES
(0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
(1, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
(2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
(3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
(4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
(5, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO customers
VALUES
(0, 10001, "Pablo Picasso", "+34 636 17 63 82", "", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045"),
(1, 20001, "Abraham Lincoln", "+1 305 907 7086", "", "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
(2, 30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");

INSERT INTO salespeople
VALUES
(0, 00001, "Petey Cruiser", "Madrid"),
(1, 00002, "Anna Sthesia",  "Barcelona"),
(2, 00003, "Paul Molive", "Berlin"),
(3, 00004, "Gail Forcewind", "Paris"),
(4, 00005, "Paige Turner",  "Mimia"),
(5, 00006, "Bob Frapples", "Mexico City"),
(6, 00007, "Walter Melon", "Amsterdam"),
(7, 00008, "Shonda Leer", "São Paulo");


INSERT INTO invoices
VALUES
(0, 852399038, "2018-08-22", 0, 1, 3),
(1, 731166526, "2018-12-31", 3, 0, 5),
(2, 271135104, "2019-01-22", 2, 2, 7);

UPDATE salespeople
SET Store = "Miami"
WHERE Salespeople_ID = 4;

UPDATE customers
SET Email = "ppicasso@gmail.com"
WHERE Cust_ID = 0;

UPDATE customers
SET Email = "lincoln@us.gov"
WHERE Cust_ID = 1; 

UPDATE customers
SET Email = "hello@napoleon.me"
WHERE Cust_ID = 2;  

