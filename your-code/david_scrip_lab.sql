CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Creating tables
DROP TABLE IF EXISTS Cars, Customers, Salespersons, Invoices;
CREATE TABLE IF NOT EXISTS Cars (
	ID INT (1) NOT NULL PRIMARY KEY,
    VIN VARCHAR(40) NOT NULL,
	Manufacturer VARCHAR(40) NOT NULL,
    Model VARCHAR(40) NOT NULL,
    Year YEAR (4) NOT NULL,
    Color VARCHAR(40) NOT NULL
);

-- ALTER TABLE table_name ADD new_column_name column_definition [ FIRST | AFTER column_name ];
CREATE TABLE IF NOT EXISTS Customers (
	ID INT (1) NOT NULL PRIMARY KEY,
	Customer_id int(30) NOT NULL,
	Name VARCHAR(40) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Email VARCHAR(30) ,
    Address VARCHAR(50) NOT NULL,
    City VARCHAR(15) NOT NULL,
    State_Province VARCHAR(30) NOT NULL,
    Country VARCHAR(30) NOT NULL,
    Postal VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Salespersons (
	ID INT (1) NOT NULL PRIMARY KEY,
	staff_id int(30) NOT NULL,
	Name VARCHAR(40) NOT NULL,
    Store VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Invoices (
	ID INT (1) NOT NULL PRIMARY KEY,
	invoice_number int(10) NOT NULL,
	Date date NOT NULL,
    Car INT (1) NOT NULL,
    Customer INT (1) NOT NULL,
    sales_person INT (1) NOT NULL
);

INSERT INTO Cars VALUES
(0,"3K096I98581DHSNUP","Volkswagen","Tiguan",2019,"Blue"),
(1,"ZM8G7BEUQZ97IH46V","Peugeot","Rifter",2019,"Red"),
(2,"RKXVNNIHLVVZOUB4M","Ford","Fusion",2019,"White"),
(3,"HKNDGS7CU31E9Z7JW","Toyota","RAV4",2019,"Silver"),
(4,"DAM41UDN3CHU2WVF6","Volvo","V60",2019,"Gray"),
(5,"DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country",2019,"Gray");

INSERT INTO Customers VALUES
(0,	10001,"Pablo Picasso","+34 636 17 63 82","-","Paseo de la Chopera, 14",	"Madrid","Madrid","Spain","28045"),
(1,	20001,"Abraham Lincoln","+1 305 907 7086","-","120 SW 8th St","Miami","Florida","United States","33130"),
(2,	30001,"Napoléon Bonaparte","+33 1 79 75 40 00","-","40 Rue du Colisée","Paris","Île-de-France","France","75008");

INSERT INTO Salespersons VALUES 
(0, 1, "Petey Cruiser", "Madrid"),
(1, 2, "Anna Sthesia", "Barcelona"),
(2, 3, "Paul Molive", "Berlin"),
(3, 4, "Gail Forcewind", "Paris"),
(4, 5, "Paige Turner", "Mimia"),
(5, 6, "Bob Frapples", "Mexico City"),
(6, 7, "Walter Melon", "Amsterdam"),
(7, 8, "Shonda Leer", "São Paulo");

INSERT INTO Invoices VALUES 
(0,852399038,"2018-08-22",0,1,3),
(1,731166526,"2018-12-31",3,0,5),
(2,271135104,"2019-01-22",2,2,7);


