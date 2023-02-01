USE lab_mysql;
-- 1 creating the tables, using the SQL_Outline.jpg as reference
CREATE TABLE cars (
	VIN varchar(20), 
    Manufacturer varchar(20),
    Model varchar(20),
    Year INT,
    Color varchar(20)
);

CREATE TABLE customer (
	CustomerID varchar(20) PRIMARY KEY,
    Name varchar(20),
    Phone_no INT,
    Email varchar(20),
    Addres varchar(20),
    City varchar(20),
    State_Province varchar(20),
    Country varchar(20)
);

CREATE TABLE salespeople (
	StaffID varchar(20) PRIMARY KEY,
    Name varchar(20),
    CompanyID INT
);

CREATE TABLE invoice (
	Invoice_no INT PRIMARY KEY,
    Date date,
    Car varchar(20),
    Customer VARCHAR(20),
    Salesperson varchar(20)
);


 -- adding the primary key to cars "VIN" because I forgot
ALTER TABLE cars
ADD PRIMARY KEY (VIN);

-- altering varchar length for address/phone number
ALTER TABLE customer MODIFY COLUMN Addres VARCHAR(1000);
ALTER TABLE customer MODIFY COLUMN Phone_no VARCHAR(100);

-- adding zip code column in customer
ALTER TABLE customer add column zipcode int;

-- altering Staff and Company ID to accept string values
ALTER TABLE salespeople MODIFY COLUMN CompanyID VARCHAR(100);
ALTER TABLE salespeople MODIFY COLUMN StaffID VARCHAR(100);

-- amending the date format to accept the values in the dataset
select date_format(curdate(), '%d-%m-%Y');
-- this gives me a test result saying that the date format should read 31-01-2023, but I'm still getting a date format error on my "seeding" script
