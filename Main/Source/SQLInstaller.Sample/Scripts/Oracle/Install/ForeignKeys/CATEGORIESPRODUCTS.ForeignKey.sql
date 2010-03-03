ALTER TABLE products
    ADD CONSTRAINT categoriesproducts_fk FOREIGN KEY (categoryid) REFERENCES categories(categoryid);
