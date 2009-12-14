CREATE TABLE orderdetails 
(
    orderid number(10) NOT NULL,
    productid number(10) NOT NULL,
    unitprice number(10,2) DEFAULT 0 NOT NULL,
    quantity number(5) DEFAULT 1 NOT NULL,
    discount number DEFAULT 0 NOT NULL,
    PRIMARY KEY(orderid,productid)
);

CREATE INDEX orderdetails_orderid_idx ON orderdetails (orderid);
CREATE INDEX orderdetails_productid_idx ON orderdetails (productid);
