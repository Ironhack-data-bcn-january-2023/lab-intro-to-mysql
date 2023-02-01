Create DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
CREATE TABLE cars (
	vin VARCHAR(30) PRIMARY KEY,
	car_manufacturer VARCHAR(30),
    car_model  VARCHAR(30) NOT NULL,
    car_year char(4) NOT NULL, 
    car_color VARCHAR(10)
);

CREATE TABLE clients (
	customer_id INT PRIMARY KEY,
    client_name VARCHAR(20) NOT NULL,
    phone_no VARCHAR(20),
    email VARCHAR(30),
    address VARCHAR(40),
    city VARCHAR(40),
    province VARCHAR(40),
    postal_code VARCHAR(15)
);

CREATE TABLE sales_person (
	staff_id INT PRIMARY KEY,
    staff_name VARCHAR(20) NOT NULL,
    store VARCHAR(20)
);

CREATE TABLE invoices (
	invoice_number INT PRIMARY KEY,
    date DATE,
    car_vin VARCHAR(40) NOT NULL,
    customer VARCHAR(20) NOT NULL,
    sales_person VARCHAR(30) NOT NULL
);

INSERT INTO cars
VALUES
("3K096I98581DHSNUP", "Volkswagen", "Tiguan", "2019", "Blue"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "2019", "Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "2018", "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", "2018", "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", "2019", "Gray"),
("DAM41UDN3CHU2WVF9", "Volvo", "V60 Cross Country", "2019", "Gray");

INSERT INTO clients
VALUES
("10001", "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "28045"),
("20001", "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida", "33130"),
("30001", "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "75008");

INSERT INTO sales_person
VALUES
("001", "Petey Cruiser", "Madrid"),
("002", "Anna Sthesia", "Barcelona"),
("003", "Paul Molive", "Berlin"),
("004", "Gail Forcewind", "Paris"),
("005", "Paige Turner", "Mimia"),
("006", "Bob Frapplesn", "Mexico City"),
("007", "Walter Melon", "Amsterdam"),
("008", "Shonda Leer", "São Paulo");

INSERT INTO invoices
VALUES
("852399038", "2019-08-22", "0", "1", "3"),
("731166526", "2018-12-31", "3", "0", "5"),
("271135104", "2019-01-22", "2", "2", "7");

