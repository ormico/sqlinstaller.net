ALTER TABLE orders
    ADD CONSTRAINT shippersorders_fk FOREIGN KEY (shipvia) REFERENCES shippers(shipperid);
