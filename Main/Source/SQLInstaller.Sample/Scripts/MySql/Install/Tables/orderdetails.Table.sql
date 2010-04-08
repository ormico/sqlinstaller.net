CREATE TABLE orderdetails 
(
    orderid integer NOT NULL,
    productid integer NOT NULL,
    unitprice numeric(10,2) NOT NULL DEFAULT 0,
    quantity smallint NOT NULL DEFAULT 1,
    discount real NOT NULL DEFAULT 0,
    PRIMARY KEY(orderid,productid)
) Type=InnoDB;

CREATE INDEX orderdetails_orderid_idx ON orderdetails (orderid);
CREATE INDEX orderdetails_productid_idx ON orderdetails (productid);
