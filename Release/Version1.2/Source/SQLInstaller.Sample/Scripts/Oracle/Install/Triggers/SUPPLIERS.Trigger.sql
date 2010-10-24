CREATE OR REPLACE TRIGGER suppliers_bi BEFORE INSERT ON suppliers
     FOR EACH ROW 
BEGIN
	IF :NEW.supplierid IS NULL THEN
		SELECT suppliers_supplierid_seq.NEXTVAL INTO :NEW.supplierid FROM DUAL;
	END IF;
END;
/
