ALTER TABLE orders
    ADD CONSTRAINT employeesorders_fk FOREIGN KEY (employeeid) REFERENCES employees(employeeid);
