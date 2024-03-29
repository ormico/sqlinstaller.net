
CREATE OR REPLACE PROCEDURE REGIONSELECT
(
    RESULTSET OUT SYS_REFCURSOR
)
IS
BEGIN
    OPEN RESULTSET FOR
	SELECT
		REGIONID,
		REGIONDESCRIPTION
	FROM REGION;

END;
/

CREATE OR REPLACE PROCEDURE REGIONUPDATE
(
	VREGIONID IN REGION.REGIONID%type,
	VREGIONDESCRIPTION IN REGION.REGIONDESCRIPTION%type
)
IS
BEGIN
	UPDATE REGION
	SET
		REGIONID	= VREGIONID,
		REGIONDESCRIPTION	= VREGIONDESCRIPTION
	WHERE
		REGIONID = VREGIONID
;
	
	
END;
/



CREATE OR REPLACE PROCEDURE REGIONINSERT
(
	VREGIONID IN REGION.REGIONID%type,
	VREGIONDESCRIPTION IN REGION.REGIONDESCRIPTION%type
)
IS
BEGIN


	INSERT
	INTO REGION
	(
		REGIONID,
		REGIONDESCRIPTION
	)
	VALUES
	(
		VREGIONID,
		VREGIONDESCRIPTION
	);
END;
/

CREATE OR REPLACE PROCEDURE REGIONDELETE
(
	VREGIONID IN REGION.REGIONID%type
)
IS
BEGIN

	DELETE	FROM REGION
	WHERE
		REGIONID = VREGIONID;

END;
/
