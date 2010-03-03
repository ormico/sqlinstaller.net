CREATE TABLE orders 
(
    orderid number(10) NOT NULL,
    customerid char(5) NOT NULL,
    employeeid number(10) NOT NULL,
    orderdate date NOT NULL,
    requireddate date,
    shippeddate date,
    shipvia number(10) NOT NULL,
    freight number(10,2) DEFAULT 0 NOT NULL,
    shipname varchar(40) NOT NULL,
    shipaddress varchar(60) NOT NULL,
    shipcity varchar(15) NOT NULL,
    shipregion varchar(15),
    shippostalcode varchar(10),
    shipcountry varchar(15),
    PRIMARY KEY (orderid)
);
CREATE SEQUENCE orders_orderid_seq START WITH 20000 NOCYCLE;

CREATE INDEX orders_customerid_idx ON orders (customerid);
CREATE INDEX orders_employeeid_idx ON orders (employeeid);
CREATE INDEX orders_orderdate_idx ON orders (orderdate);
CREATE INDEX orders_shippeddate_idx ON orders (shippeddate);
CREATE INDEX orders_shippostalcode_idx ON orders (shippostalcode);
