CREATE OR REPLACE FUNCTION customers() RETURNS TRIGGER AS '
BEGIN
	NEW.customerid := UPPER(NEW.customerid);

	RETURN NEW;
END;
'  LANGUAGE 'plpgsql';
