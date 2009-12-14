
CREATE PROCEDURE EmployeesUpdate
(
	@EmployeeID decimal(10,0),
	@LastName nvarchar(20),
	@FirstName nvarchar(10),
	@Title nvarchar(30) = NULL,
	@TitleOfCourtesy nvarchar(25) = NULL,
	@BirthDate datetime = NULL,
	@HireDate datetime = NULL,
	@Address nvarchar(60) = NULL,
	@City nvarchar(15) = NULL,
	@Region nvarchar(15) = NULL,
	@PostalCode nvarchar(10) = NULL,
	@Country nvarchar(15) = NULL,
	@HomePhone nvarchar(24) = NULL,
	@Extension nvarchar(4) = NULL,
	@Photo image = NULL,
	@Notes ntext = NULL,
	@ReportsTo decimal(10,0) = NULL,
	@PhotoPath nvarchar(255) = NULL,
	@UserID nvarchar(64),
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	UPDATE Employees
	SET
		LastName = @LastName,
		FirstName = @FirstName,
		Title = @Title,
		TitleOfCourtesy = @TitleOfCourtesy,
		BirthDate = @BirthDate,
		HireDate = @HireDate,
		Address = @Address,
		City = @City,
		Region = @Region,
		PostalCode = @PostalCode,
		Country = @Country,
		HomePhone = @HomePhone,
		Extension = @Extension,
		Photo = @Photo,
		Notes = @Notes,
		ReportsTo = @ReportsTo,
		PhotoPath = @PhotoPath,
		UserID = @UserID
	WHERE
		EmployeeID = @EmployeeID


	SET @Err = @@Error


	RETURN @Err
END
GO



