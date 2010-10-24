CREATE TABLE suppliers 
(
    supplierid int NOT NULL AUTO_INCREMENT,
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
    homepage varchar(512),
    PRIMARY KEY (supplierid) 
) Type=InnoDB;

CREATE INDEX suppliers_companyname_idx ON suppliers (companyname);
CREATE INDEX suppliers_postalcode_idx ON suppliers (postalcode);
