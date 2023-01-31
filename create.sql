-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `Manufacturer` VARCHAR(20) NOT NULL,
  `Model` VARCHAR(20) NOT NULL,
  `Year` YEAR NULL,
  `Color` VARCHAR(20) NULL,
  `VIN` VARCHAR(30) NOT NULL,
  `ID` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `Customer ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone number` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Adress` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State/Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Zip/CP` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Customer ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salespeople`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespeople` (
  `Staff ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `Invoice Number` INT NOT NULL,
  `Date` DATE NOT NULL,
  `Salespeople_Staff ID` INT NOT NULL,
  `Customers_Customer ID` INT NOT NULL,
  `Cars_VIN` INT NOT NULL,
  PRIMARY KEY (`Invoice Number`),
  INDEX `fk_Invoices_Salespeople1_idx` (`Salespeople_Staff ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_Customer ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salespeople1`
    FOREIGN KEY (`Salespeople_Staff ID`)
    REFERENCES `mydb`.`Salespeople` (`Staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_Customer ID`)
    REFERENCES `mydb`.`Customers` (`Customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `mydb`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO `mydb`.`Cars`
VALUES
("Volkswagen", "Tiguan", 2019, "Blue", "3K096I98581DHSNUP", 0),
("Peugeot", "Rifter", 2019, "Red", "ZM8G7BEUQZ97IH46V", 1),
("Ford", "Fusion", 2018, "White", "RKXVNNIHLVVZOUB4M", 2),
("Toyota", "RAV4", 2018, "Silver", "HKNDGS7CU31E9Z7JW", 3),
("Volvo", "V60", 2019, "Gray", "DAM41UDN3CHU2WVF6", 4),
("Volvo", "V60 Cross Country", 2019, "Gray", "DAM41UDN3CHU2WVF6", 5);

INSERT INTO `mydb`.`Customers`
VALUES
(10001, "Pablo Picasso", "+34 636 17 63 82", "", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045"),
(20001, "Abraham Lincoln", "+1 305 907 7086", "", "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
(30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");

INSERT INTO `mydb`.`Salespeople`
VALUES
(00001, "Petey Cruiser", "Madrid"),
(00002, "Anna Sthesia",  "Barcelona"),
(00003, "Paul Molive", "Berlin"),
(00004, "Gail Forcewind", "Paris"),
(00005, "Paige Turner",  "Mimia"),
(00006, "Bob Frapples", "Mexico City"),
(00007, "Walter Melon", "Amsterdam"),
(00008, "Shonda Leer", "São Paulo");


INSERT INTO `mydb`.`Invoices`
VALUES
(852399038, 22-08-2018, 0, 10002, 00004),
(731166526, 31-12-2018, 3, 10001, 00006),
(271135104, 22-01-2019, 2, 10003, 00008);


