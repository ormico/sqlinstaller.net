CREATE TABLE products 
(
    productid serial NOT NULL,
    productname varchar(40) NOT NULL,
    supplierid integer,
    categoryid integer,
    quantityperunit varchar(20),
    unitprice numeric(10,2) DEFAULT 0,
    unitsinstock decimal(5,0) DEFAULT 0,
    unitsonorder decimal(5,0) DEFAULT 0,
    reorderlevel decimal(5,0) DEFAULT 0,
    discontinued boolean NOT NULL DEFAULT false,
    PRIMARY KEY (productid)
);
CREATE INDEX products_categoryid_idx ON products USING btree (categoryid);
CREATE INDEX products_productname_idx ON products USING btree (productname);
CREATE INDEX products_supplierid_idx ON products USING btree (supplierid);
