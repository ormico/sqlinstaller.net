ALTER TABLE territories
    ADD CONSTRAINT territoriesregion_fk FOREIGN KEY (regionid) REFERENCES region(regionid);
