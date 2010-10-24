CREATE TABLE products 
(
    productid int NOT NULL AUTO_INCREMENT,
    productname varchar(40) NOT NULL,
    supplierid integer,
    categoryid integer,
    quantityperunit varchar(20),
    unitprice numeric(10,2) DEFAULT 0,
    unitsinstock smallint DEFAULT 0,
    unitsonorder smallint DEFAULT 0,
    reorderlevel smallint DEFAULT 0,
    discontinued boolean NOT NULL DEFAULT 0,
    PRIMARY KEY (productid)
) Type=InnoDB;
CREATE INDEX products_categoryid_idx ON products (categoryid);
CREATE INDEX products_productname_idx ON products (productname);
CREATE INDEX products_supplierid_idx ON products (supplierid);
