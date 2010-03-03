CREATE OR REPLACE TRIGGER shippers_bi BEFORE INSERT ON shippers
     FOR EACH ROW 
BEGIN
	IF :NEW.shipperid IS NULL THEN
		SELECT shippers_shipperid_seq.NEXTVAL INTO :NEW.shipperid FROM DUAL;
	END IF;
END;
/
