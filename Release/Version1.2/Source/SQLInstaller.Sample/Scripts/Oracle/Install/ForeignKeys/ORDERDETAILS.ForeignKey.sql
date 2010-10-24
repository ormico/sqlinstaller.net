ALTER TABLE orderdetails
    ADD CONSTRAINT ordersorderdetails_fk FOREIGN KEY (orderid) REFERENCES orders(orderid) ON DELETE CASCADE;
