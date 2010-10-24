CREATE PROCEDURE AuthorizationSelect
(
	@UserID nvarchar(255)
)
AS
	SET NOCOUNT ON

	SELECT	EmployeeID AS AuthEmployeeID,
			UserID AS AuthUserID,
			LastName AS AuthLastName,
			FirstName AS AuthFirstName,
			Title AS AuthTitle,
			HireDate AS AuthHireDate,
			City AS AuthCity,
			Region AS AuthRegion,
			Country AS AuthCountry,
			HomePhone AS AuthHomePhone,
			ReportsTo AS AuthReportsTo
	FROM	Employees
	WHERE	UserID = @UserID

	SELECT	'Administrators'

GO
