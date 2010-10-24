CREATE OR REPLACE TRIGGER ORDERDETAILS_BIU BEFORE INSERT OR UPDATE OR DELETE ON orderdetails
     FOR EACH ROW
DECLARE
	vshippeddate date;
	vquantity integer;
	vprod varchar(40);
	vdisco number(1);
BEGIN
	IF DELETING THEN 
		SELECT shippeddate INTO vshippeddate FROM orders WHERE orderid = :OLD.orderid;
		IF vshippeddate IS NOT NULL THEN
			RAISE_APPLICATION_ERROR(-20000,'Cannot delete  Order has already shipped');
		END IF;
		UPDATE products SET unitsinstock = unitsinstock + :OLD.quantity
		WHERE productid = :OLD.productid;
	ELSE
		SELECT shippeddate INTO vshippeddate FROM orders WHERE orderid = :NEW.orderid;
		IF vshippeddate IS NOT NULL THEN
			RAISE_APPLICATION_ERROR(-20000,'Order has already shipped');
		END IF;
		IF UPDATING THEN
			vquantity := :NEW.quantity - :OLD.quantity;
		ELSE
			vquantity := :NEW.quantity;
		END IF;
		SELECT productname, discontinued INTO vprod, vdisco 
		FROM products WHERE productid = :NEW.productid;
		IF (vprod IS NULL OR vdisco = 1) THEN
			RAISE_APPLICATION_ERROR(-20000, vprod||' has been discontinued');
		END IF;
		UPDATE products SET unitsinstock = unitsinstock - vquantity
		WHERE productid = :NEW.productid;
	END IF;
END;
/
