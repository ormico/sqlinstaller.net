CREATE PROCEDURE AUTHORIZATIONSELECT
(
	VUSERNAME varchar,
	RESULTSET OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN RESULTSET FOR
	SELECT	EmployeeID AS "AuthEmployeeID",
			UserID AS "AuthUserID",
			LastName AS "AuthLastName",
			FirstName AS "AuthFirstName",
			Title AS "AuthTitle",
			HireDate AS "AuthHireDate",
			City AS "AuthCity",
			Region AS "AuthRegion",
			Country AS "AuthCountry",
			HomePhone AS "AuthHomePhone",
			ReportsTo AS "AuthReportsTo"
	FROM	Employees
	WHERE	UserID = VUSERNAME;
END;
/