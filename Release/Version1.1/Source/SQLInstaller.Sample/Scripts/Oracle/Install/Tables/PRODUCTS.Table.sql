CREATE TABLE products 
(
    productid number(10) NOT NULL,
    productname varchar(40) NOT NULL,
    supplierid number(10),
    categoryid number(10),
    quantityperunit varchar(20),
    unitprice number(10,2) DEFAULT 0,
    unitsinstock number(5) DEFAULT 0,
    unitsonorder number(5) DEFAULT 0,
    reorderlevel number(5) DEFAULT 0,
    discontinued number(1) DEFAULT 0 NOT NULL,
    PRIMARY KEY (productid)
);
CREATE SEQUENCE products_productid_seq START WITH 100 NOCYCLE;

CREATE INDEX products_categoryid_idx ON products (categoryid);
CREATE INDEX products_productname_idx ON products (productname);
CREATE INDEX products_supplierid_idx ON products (supplierid);
