CREATE TABLE CUSTOMERS 
(
    CUSTOMERID varchar(5) NOT NULL,
    COMPANYNAME varchar(40) NOT NULL,
    CONTACTNAME varchar(30),
    CONTACTTITLE varchar(30),
    ADDRESS varchar(60),
    CITY varchar(15),
    REGION varchar(15),
    POSTALCODE varchar(10),
    COUNTRY varchar(15),
    PHONE varchar(24),
    FAX varchar(24),
    PRIMARY KEY(CUSTOMERID)
);

CREATE INDEX CUSTOMERS_CITY_IDX (CITY) ON CUSTOMERS;
CREATE INDEX CUSTOMERS_COMPANYNAME_IDX (COMPANYNAME) ON CUSTOMERS;
CREATE INDEX CUSTOMERS_POSTALCODE_IDX (POSTALCODE) ON CUSTOMERS;
CREATE INDEX CUSTOMERS_REGION_IDX (REGION) ON CUSTOMERS;
