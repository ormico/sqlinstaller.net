
CREATE PROCEDURE EmployeesInsert
(
	@EmployeeID decimal(10,0) = NULL output,
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
	@UserID nvarchar(255),
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	INSERT
	INTO Employees
	(
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
	)
	VALUES
	(
		@LastName,
		@FirstName,
		@Title,
		@TitleOfCourtesy,
		@BirthDate,
		@HireDate,
		@Address,
		@City,
		@Region,
		@PostalCode,
		@Country,
		@HomePhone,
		@Extension,
		@Photo,
		@Notes,
		@ReportsTo,
		@PhotoPath,
		@UserID
	)

	SET @Err = @@Error

	SELECT @EmployeeID = SCOPE_IDENTITY()

	RETURN @Err
END
GO

