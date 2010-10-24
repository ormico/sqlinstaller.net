
CREATE OR REPLACE PROCEDURE SHIPPERSSELECT
(
    RESULTSET OUT SYS_REFCURSOR
)
IS
BEGIN
    OPEN RESULTSET FOR
	SELECT
		SHIPPERID,
		COMPANYNAME,
		PHONE
	FROM SHIPPERS;

END;
/

CREATE OR REPLACE PROCEDURE SHIPPERSUPDATE
(
	VSHIPPERID IN SHIPPERS.SHIPPERID%type,
	VCOMPANYNAME IN SHIPPERS.COMPANYNAME%type,
	VPHONE IN SHIPPERS.PHONE%type
)
IS
BEGIN
	UPDATE SHIPPERS
	SET
		SHIPPERID	= VSHIPPERID,
		COMPANYNAME	= VCOMPANYNAME,
		PHONE	= VPHONE
	WHERE
		SHIPPERID = VSHIPPERID
;
	
	
END;
/



CREATE OR REPLACE PROCEDURE SHIPPERSINSERT
(
	VSHIPPERID IN SHIPPERS.SHIPPERID%type,
	VCOMPANYNAME IN SHIPPERS.COMPANYNAME%type,
	VPHONE IN SHIPPERS.PHONE%type
)
IS
BEGIN


	INSERT
	INTO SHIPPERS
	(
		SHIPPERID,
		COMPANYNAME,
		PHONE
	)
	VALUES
	(
		VSHIPPERID,
		VCOMPANYNAME,
		VPHONE
	);
END;
/

CREATE OR REPLACE PROCEDURE SHIPPERSDELETE
(
	VSHIPPERID IN SHIPPERS.SHIPPERID%type
)
IS
BEGIN

	DELETE	FROM SHIPPERS
	WHERE
		SHIPPERID = VSHIPPERID;

END;
/
