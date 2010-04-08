
CREATE OR REPLACE PROCEDURE EMPLOYEETERRITORIESSELECT
(
    RESULTSET OUT SYS_REFCURSOR
)
IS
BEGIN
    OPEN RESULTSET FOR
	SELECT
		EMPLOYEEID,
		TERRITORYID
	FROM EMPLOYEETERRITORIES;

END;
/



CREATE OR REPLACE PROCEDURE EMPLOYEETERRITORIESINSERT
(
	VEMPLOYEEID IN EMPLOYEETERRITORIES.EMPLOYEEID%type,
	VTERRITORYID IN EMPLOYEETERRITORIES.TERRITORYID%type
)
IS
BEGIN


	INSERT
	INTO EMPLOYEETERRITORIES
	(
		EMPLOYEEID,
		TERRITORYID
	)
	VALUES
	(
		VEMPLOYEEID,
		VTERRITORYID
	);
END;
/

CREATE OR REPLACE PROCEDURE EMPLOYEETERRITORIESDELETE
(
	VEMPLOYEEID IN EMPLOYEETERRITORIES.EMPLOYEEID%type,
	VTERRITORYID IN EMPLOYEETERRITORIES.TERRITORYID%type
)
IS
BEGIN

	DELETE	FROM EMPLOYEETERRITORIES
	WHERE
		EMPLOYEEID = VEMPLOYEEID AND
		TERRITORYID = VTERRITORYID;

END;
/