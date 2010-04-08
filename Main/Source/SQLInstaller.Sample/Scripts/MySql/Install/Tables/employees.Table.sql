CREATE TABLE employees 
(
    employeeid int NOT NULL AUTO_INCREMENT,
    lastname varchar(20) NOT NULL,
    firstname varchar(10) NOT NULL,
    title varchar(30),
    titleofcourtesy varchar(25),
    birthdate date,
    hiredate date,
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postalcode varchar(10),
    country varchar(15),
    homephone varchar(24),
    extension varchar(4),
    photopath varchar(255),
    notes text,
    reportsto integer,
    PRIMARY KEY(employeeid)
) Type=InnoDB;
CREATE INDEX employees_lastname_idx ON employees (lastname);
CREATE INDEX employees_postalcode_idx ON employees (postalcode);
