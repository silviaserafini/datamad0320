SHOW DATABASES;
USE lab_mysql;

DROP TABLE IF EXISTS `Invoices`;
DROP TABLE IF EXISTS `Cars`;
DROP TABLE IF EXISTS `Customers`;
DROP TABLE IF EXISTS `SalesPersons`;


CREATE TABLE IF NOT EXISTS `Cars` (
  `ID` INT NOT NULL  ,
  `VIN` VARCHAR(45)  ,
  `manifacturer` VARCHAR(255) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `car_color` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`));




CREATE TABLE IF NOT EXISTS `Customers` (
  `idCustomers` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) ,
  `email` VARCHAR(45) ,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip/postalcode` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCustomers`));


CREATE TABLE IF NOT EXISTS `SalesPersons` (
  `idStaff` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idStaff`));


CREATE TABLE IF NOT EXISTS `Invoices` (
  `invoice_number` INT NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `SalesPersons_idStaff` INT NOT NULL,
  `Customers_idCustomers` INT NOT NULL,
  `Cars_ID` INT  NOT NULL,
  PRIMARY KEY (`invoice_number`));
  #INDEX `fk_Invoices_SalesPersons1_idx` (`SalesPersons_idStaff` ASC) VISIBLE,
  #INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,
  #INDEX `fk_Invoices_Cars1_idx` (`Cars_ID` ASC) VISIBLE,
  #CONSTRAINT `fk_Invoices_SalesPersons1`
    #FOREIGN KEY (`SalesPersons_idStaff`)
    #REFERENCES `SalesPersons` (`idStaff`)
    #ON DELETE NO ACTION
    #ON UPDATE NO ACTION,
  #CONSTRAINT `fk_Invoices_Customers1`
   # FOREIGN KEY (`Customers_idCustomers`)
    #REFERENCES `Customers` (`idCustomers`)
    #ON DELETE NO ACTION
    #ON UPDATE NO ACTION,
  #CONSTRAINT `fk_Invoices_Cars1`
   # FOREIGN KEY (`Cars_ID`)
    #REFERENCES `Cars` (`ID`)
    #ON DELETE NO ACTION
    #ON UPDATE NO ACTION);
    
    SHOW TABLES


