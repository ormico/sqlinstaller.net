CREATE OR REPLACE TRIGGER PRODUCTS_BIU BEFORE INSERT OR UPDATE ON products
     FOR EACH ROW 
BEGIN
	IF INSERTING AND :NEW.productid IS NULL THEN
		SELECT products_productid_seq.NEXTVAL INTO :NEW.productid FROM DUAL;
	END IF;
	IF :NEW.unitsinstock < 0 THEN
	BEGIN
		:NEW.unitsonorder := :NEW.unitsonorder - :NEW.unitsinstock;
		:NEW.unitsinstock := 0;
	END;
	ELSIF (:NEW.unitsinstock < :NEW.reorderlevel AND :NEW.unitsonorder = 0) THEN
		:NEW.unitsonorder := :NEW.reorderlevel;
	END IF;
END;
/
