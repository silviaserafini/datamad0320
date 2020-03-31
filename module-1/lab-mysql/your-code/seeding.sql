USE lab_mysql;

INSERT INTO `Cars` (VIN,manifacturer,model, `year`,car_color)
VALUES ('3K096I98581DHSNUP',	'Volkswagen'	,'Tiguan',	2019,	'Blue');

INSERT INTO `Cars` (VIN,manifacturer,model, `year`,car_color)
VALUES ('ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Red');

SELECT * FROM `Customers`;

INSERT INTO `Customers` (idCustomers , name, phone_number,email,address,city,`state/province`,country,`zip/postalcode` )
VALUES (10001,	'Pablo Picasso'	,'+34 636 17 63 82',	'null',	'Paseo de la Chopera, 14',	'Madrid',	'Madrid',	'Spain',	28045);

INSERT INTO `Customers` (idCustomers , name, phone_number,email,address,city,`state/province`,country,`zip/postalcode` )
VALUES (20001,	'Abraham Lincoln',	'+1 305 907 7086',	'null'	,'120 SW 8th St',	'Miami',	'Florida',	'United States',	33130);

INSERT INTO `Customers` (idCustomers , name, phone_number,email,address,city,`state/province`,country,`zip/postalcode` )
VALUES (30001,	'Napoléon Bonaparte',	'+33 1 79 75 40 00',	'null',	'40 Rue du Colisée',	'Paris',	'Île-de-France',	'France'	,75008);


SELECT * FROM `SalesPersons`;
INSERT INTO `SalesPersons` (idStaff , name, store)
VALUES (23423,'Julio Gomez', 'Madrid');

SELECT * FROM `Invoices`;

INSERT INTO `Invoices` (invoice_number,date, SalesPersons_idStaff,Customers_idCustomers,Cars_VIN )
VALUES( '852399038', '22-08-2018'	,'23423',	10001,	'3K096I98581DHSNUP');

