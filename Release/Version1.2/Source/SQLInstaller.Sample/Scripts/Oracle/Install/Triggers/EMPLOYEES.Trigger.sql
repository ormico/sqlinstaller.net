CREATE OR REPLACE TRIGGER EMPLOYEES_BI BEFORE INSERT ON employees
     FOR EACH ROW 
BEGIN
	IF :NEW.employeeid IS NULL THEN
		SELECT employees_employeeid_seq.NEXTVAL INTO :NEW.employeeid FROM DUAL;
	END IF;
END;
/
