ALTER TABLE customercustomerdemo
    ADD CONSTRAINT customerdemotype_fk FOREIGN KEY (customertypeid) REFERENCES customerdemographics(customertypeid);
ALTER TABLE customercustomerdemo
    ADD CONSTRAINT customerdemocustomers_fk FOREIGN KEY (customerid) REFERENCES customers(customerid);