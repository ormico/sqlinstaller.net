CREATE TABLE customers 
(
    customerid char(5) NOT NULL,
    companyname varchar(40) NOT NULL,
    contactname varchar(30),
    contacttitle varchar(30),
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postalcode varchar(10),
    country varchar(15),
    phone varchar(24),
    fax varchar(24),
    PRIMARY KEY(customerid)
);

CREATE INDEX customers_city_idx ON customers (city);
CREATE INDEX customers_companyname_idx ON customers (companyname);
CREATE INDEX customers_postalcode_idx ON customers (postalcode);
CREATE INDEX customers_region_idx ON customers (region);
