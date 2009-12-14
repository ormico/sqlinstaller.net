CREATE TABLE orderdetails 
(
    orderid integer NOT NULL,
    productid integer NOT NULL,
    unitprice numeric(10,2) NOT NULL DEFAULT 0,
    quantity decimal(5,0) NOT NULL DEFAULT 1,
    discount real NOT NULL DEFAULT 0,
    PRIMARY KEY(orderid,productid)
);

CREATE INDEX orderdetails_orderid_idx ON orderdetails USING btree (orderid);
CREATE INDEX orderdetails_productid_idx ON orderdetails USING btree (productid);
