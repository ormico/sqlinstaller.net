ALTER TABLE employeeterritories
    ADD CONSTRAINT employeeterritoriesemp_fk FOREIGN KEY (employeeid) REFERENCES employees(employeeid);
ALTER TABLE employeeterritories
    ADD CONSTRAINT employeeterritoriesterr_fk FOREIGN KEY (territoryid) REFERENCES territories(territoryid);
