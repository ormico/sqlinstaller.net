
CREATE PROCEDURE EmployeesSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		EmployeeID,
		LastName,
		FirstName,
		Title,
		TitleOfCourtesy,
		BirthDate,
		HireDate,
		Address,
		City,
		Region,
		PostalCode,
		Country,
		HomePhone,
		Extension,
		Photo,
		Notes,
		ReportsTo,
		PhotoPath,
		UserID
	FROM Employees
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO

