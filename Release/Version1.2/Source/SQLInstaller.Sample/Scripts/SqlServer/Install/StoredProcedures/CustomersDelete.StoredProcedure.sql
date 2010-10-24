
CREATE PROCEDURE CustomersDelete
(
	@CustomerID nchar(5),
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM Customers
	WHERE
		CustomerID = @CustomerID
	SET @Err = @@Error

	RETURN @Err
END
GO

