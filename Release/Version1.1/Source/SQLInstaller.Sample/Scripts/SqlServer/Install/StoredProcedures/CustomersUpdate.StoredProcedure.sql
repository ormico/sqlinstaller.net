
CREATE PROCEDURE CustomersUpdate
(
	@CustomerID nchar(5),
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
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	UPDATE Customers
	SET
		CompanyName = @CompanyName,
		ContactName = @ContactName,
		ContactTitle = @ContactTitle,
		Address = @Address,
		City = @City,
		Region = @Region,
		PostalCode = @PostalCode,
		Country = @Country,
		Phone = @Phone,
		Fax = @Fax
	WHERE
		CustomerID = @CustomerID


	SET @Err = @@Error


	RETURN @Err
END
GO



