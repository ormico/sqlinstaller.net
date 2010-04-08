CREATE TABLE EMPLOYEES 
(
    EMPLOYEEid decimal NOT NULL,
    LASTNAME varchar(20) NOT NULL,
    FIRSTNAME varchar(10) NOT NULL,
    TITLE varchar(30),
    TITLEOFCOURTESY varchar(25),
    BIRTHDATE date,
    HIREDATE date,
    ADDRESS varchar(60),
    CITY varchar(15),
    REGION varchar(15),
    POSTALCODE varchar(10),
    COUNTRY varchar(15),
    HOMEPHONE varchar(24),
    EXTENSION varchar(4),
    PHOTOPATH varchar(255),
    NOTES varchar(1000),
    REPORTSTO decimal,
    PRIMARY KEY(EMPLOYEEID)
);

CREATE INDEX EMPLOYEES_LASTNAME_IDX ON EMPLOYEES (LASTNAME);

CREATE INDEX EMPLOYEES_POSTALCODE_IDX ON EMPLOYEES (POSTALCODE);
