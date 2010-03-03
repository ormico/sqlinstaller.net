ALTER TABLE orderdetails
    ADD CONSTRAINT productsorderdetails_fk FOREIGN KEY (productid) REFERENCES products(productid);
