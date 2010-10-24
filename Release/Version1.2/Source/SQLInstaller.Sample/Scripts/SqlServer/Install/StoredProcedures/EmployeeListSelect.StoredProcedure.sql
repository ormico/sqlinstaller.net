CREATE PROCEDURE EmployeeListSelect
AS
	SET NOCOUNT ON

	SELECT	EmployeeID,
			LastName,
			FirstName,
			Title,
			Region,
			HomePhone,
			ReportsTo
	FROM	Employees
	ORDER BY LastName, FirstName
GO
