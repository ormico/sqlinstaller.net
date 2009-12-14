CREATE OR REPLACE FUNCTION orderdetails() RETURNS TRIGGER AS '
DECLARE
	vshippeddate date;
	vquantity integer;
	vprod varchar(40);
	vdisco boolean;
BEGIN
	IF TG_OP = ''DELETE'' THEN 
		SELECT shippeddate INTO vshippeddate FROM orders WHERE orderid = OLD.orderid;
		IF vshippeddate IS NOT NULL THEN
			RAISE EXCEPTION ''Cannot %.  Order % has already shipped'', 
				TG_OP, OLD.orderid;
		END IF;
		UPDATE products SET unitsinstock = unitsinstock + OLD.quantity
		WHERE productid = OLD.productid;
		
		RETURN OLD;
	ELSE
		SELECT shippeddate INTO vshippeddate FROM orders WHERE orderid = NEW.orderid;
		IF vshippeddate IS NOT NULL THEN
			RAISE EXCEPTION ''Cannot %.  Order % has already shipped'', 
				TG_OP, NEW.orderid;
		END IF;
		IF TG_OP = ''UPDATE'' THEN
			vquantity := NEW.quantity - OLD.quantity;
		ELSE
			vquantity := NEW.quantity;
		END IF;
		SELECT productname, discontinued INTO vprod, vdisco 
		FROM products WHERE productid = NEW.productid;
		IF NOT FOUND OR vdisco THEN
			RAISE EXCEPTION ''% has been discontinued'', vprod;
		END IF;
		UPDATE products SET unitsinstock = unitsinstock - vquantity
		WHERE productid = NEW.productid;
		RETURN NEW;
	END IF;
END;
'  LANGUAGE 'plpgsql';
