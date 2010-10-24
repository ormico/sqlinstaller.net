
CREATE PROCEDURE SuppliersInsert
(
	@SupplierID decimal(10,0) = NULL output,
	@CompanyName nvarchar(40),
	@ContactName nvarchar(30) = NULL,
	@ContactTitle nvarchar(30) = NULL,
	@Address nvarchar(60) = NULL,
	@City nvarchar(15) = NULL,
	@Region nvarchar(15) = NULL,
	@PostalCode nvarchar(10) = NULL,
	@Country nvarchar(15) = NULL,
	@Phone nvarchar(24) = NULL,
	@Fax nvarchar(24) = NULL,
	@HomePage ntext = NULL,
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	INSERT
	INTO Suppliers
	(
		CompanyName,
		ContactName,
		ContactTitle,
		Address,
		City,
		Region,
		PostalCode,
		Country,
		Phone,
		Fax,
		HomePage
	)
	VALUES
	(
		@CompanyName,
		@ContactName,
		@ContactTitle,
		@Address,
		@City,
		@Region,
		@PostalCode,
		@Country,
		@Phone,
		@Fax,
		@HomePage
	)

	SET @Err = @@Error

	SELECT @SupplierID = SCOPE_IDENTITY()

	RETURN @Err
END
GO

