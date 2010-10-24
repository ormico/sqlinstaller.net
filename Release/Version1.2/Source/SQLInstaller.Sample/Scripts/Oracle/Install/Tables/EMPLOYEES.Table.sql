CREATE TABLE employees 
(
    employeeid number(10) NOT NULL,
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
    notes varchar(4000),
    reportsto integer,
    photopath varchar(255),
	userid varchar(64) NOT NULL,
    PRIMARY KEY(employeeid)
);
CREATE SEQUENCE employees_employeeid_seq START WITH 10 NOCYCLE;

CREATE INDEX employees_lastname_idx ON employees (lastname);
CREATE INDEX employees_postalcode_idx ON employees (postalcode);
