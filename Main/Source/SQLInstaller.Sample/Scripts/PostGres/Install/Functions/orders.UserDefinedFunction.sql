CREATE OR REPLACE FUNCTION orders() RETURNS TRIGGER AS '
BEGIN
	IF TG_OP <> ''INSERT'' THEN 
		IF OLD.shippeddate IS NOT NULL THEN 
			RAISE EXCEPTION ''Cannot %.  Order % has already shipped'', TG_OP, 
				OLD.orderid;
		END IF;
	END IF;

	IF TG_OP = ''DELETE'' THEN
		RETURN OLD;
	ELSE
		NEW.customerid := UPPER(NEW.customerid);
		RETURN NEW;
	END IF;
END;
'  LANGUAGE 'plpgsql';
