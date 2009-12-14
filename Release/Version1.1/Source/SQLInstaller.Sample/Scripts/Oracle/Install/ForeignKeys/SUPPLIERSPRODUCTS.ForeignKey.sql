ALTER TABLE products
    ADD CONSTRAINT suppliersproducts_fk FOREIGN KEY (supplierid) REFERENCES suppliers(supplierid);


