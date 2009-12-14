CREATE OR REPLACE FUNCTION products() RETURNS TRIGGER AS '
BEGIN
	IF TG_OP = ''UPDATE'' THEN 
		IF NEW.unitsinstock < 0 THEN
			NEW.unitsonorder := NEW.unitsonorder - NEW.unitsinstock;
			NEW.unitsinstock := 0;
		ELSIF (NEW.unitsinstock < NEW.reorderlevel AND NEW.unitsonorder = 0) THEN
			NEW.unitsonorder = NEW.reorderlevel;
		END IF;
	END IF;

	IF TG_OP = ''DELETE'' THEN
		RETURN OLD;
	ELSE
		RETURN NEW;
	END IF;
END;
'  LANGUAGE 'plpgsql';
