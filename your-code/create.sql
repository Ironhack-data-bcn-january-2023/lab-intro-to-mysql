DROP DATABASE IF EXISTS MAXIMOTORS;
CREATE DATABASE IF NOT EXISTS MAXIMOTORS;

use MAXIMOTORS;

DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars(
	car_id varchar(50) primary key,
    manufacturer varchar(10) not null,
    model varchar(10) not null
    );

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers (
	cust_id int primary key,
    name varchar(40) not null,
    phone varchar(20),
    email varchar(40),
    address varchar(40)
    );

CREATE TABLE IF NOT EXISTS salesman(
	salesman_id int primary key,
    nombre varchar(40) not null,
    store varchar(20)
	);
    
DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS invoices (
	invoice_id int primary key,
    date date,
    car varchar(50), -- key for car
    customer int, -- key for customer
    sales_person int
    );
    
ALTER TABLE invoices
	ADD FOREIGN KEY (car)
REFERENCES cars(car_id)
ON DELETE SET NULL;

ALTER TABLE invoices
	ADD FOREIGN KEY (sales_person)
REFERENCES salesman(salesman_id)
ON DELETE CASCADE;

ALTER TABLE invoices
	ADD FOREIGN KEY (customer)
REFERENCES customers(cust_id)
ON DELETE CASCADE;

INSERT INTO cars 
VALUES ("0", "Volkswage", "Tiguan"),
("1", "Peugeot", "Rifter"),
("2", "Ford", "Fusion"),
("3", "Toyota", "RAV4"),
("4", "Volvo", "V60");

INSERT INTO customers 
VALUES (0, "Pablo Picasso", "+34 636 17 63 82", "-" ,"Paseo de la Chopera 14"),
(1, "Abraham Lincoln", "+1 305 907 7086", "-" ,"120 SW 8th St"),
(2, "Napoléon Bonaparte", "+33 1 79 75 40 00", "-" ,"40 Rue du Colisée");

INSERT INTO salesman 
VALUES (0, "Petey Cruiser", "Madrid"),
(8, "Anna Sthesia", "Barcelonat"),
(2, "Paul Molive","Berlin"),
(3, "Gail Forcewind	","Paris"),
(4, "Paige Turner","Mimia"),
(5, "Bob Frapples","Mexico City"),
(6, "Walter Melon	","Amsterdam"),
(7, "Shonda Leer	","São Paulo");

INSERT INTO invoices 
VALUES (0, "22-08-2018", 0, 1, 3),
(1, "31-12-2018", 3, 0, 5),
(2, "22-01-2019",2, 2, 7);