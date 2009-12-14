CREATE OR REPLACE TRIGGER ORDERS_BIU BEFORE INSERT OR UPDATE ON orders
     FOR EACH ROW 
BEGIN
	IF INSERTING AND :NEW.orderid IS NULL THEN
		SELECT orders_orderid_seq.NEXTVAL INTO :NEW.orderid FROM DUAL;
	END IF;
	IF (:OLD.shippeddate IS NOT NULL) THEN
		RAISE_APPLICATION_ERROR(-20000,'Cannot modify.  Order has already shipped');
	END IF;
	:NEW.customerid := UPPER(:NEW.customerid);
END;
/
