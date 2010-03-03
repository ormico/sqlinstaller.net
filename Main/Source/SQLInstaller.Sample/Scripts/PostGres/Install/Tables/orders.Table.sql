CREATE TABLE orders 
(
    orderid serial NOT NULL,
    customerid varchar(5) NOT NULL,
    employeeid integer NOT NULL,
    orderdate date NOT NULL,
    requireddate date,
    shippeddate date,
    shipvia integer NOT NULL,
    freight numeric(10,2) NOT NULL DEFAULT 0,
    shipname varchar(40) NOT NULL,
    shipaddress varchar(60) NOT NULL,
    shipcity varchar(15) NOT NULL,
    shipregion varchar(15),
    shippostalcode varchar(10),
    shipcountry varchar(15),
    PRIMARY KEY (orderid)
);

CREATE INDEX orders_customerid_idx ON orders USING btree (customerid);
CREATE INDEX orders_employeeid_idx ON orders USING btree (employeeid);
CREATE INDEX orders_orderdate_idx ON orders USING btree (orderdate);
CREATE INDEX orders_shippeddate_idx ON orders USING btree (shippeddate);
CREATE INDEX orders_shippostalcode_idx ON orders USING btree (shippostalcode);
