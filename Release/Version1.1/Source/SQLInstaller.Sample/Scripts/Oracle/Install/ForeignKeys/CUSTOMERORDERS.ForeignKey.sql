ALTER TABLE orders
    ADD CONSTRAINT customersorders_fk FOREIGN KEY (customerid) REFERENCES customers(customerid);
