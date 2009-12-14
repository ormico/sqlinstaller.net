
CREATE PROCEDURE CustomerCustomerDemoDelete
(
	@CustomerID nchar(5),
	@CustomerTypeID nchar(10),
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM CustomerCustomerDemo
	WHERE
		CustomerID = @CustomerID AND
		CustomerTypeID = @CustomerTypeID
	SET @Err = @@Error

	RETURN @Err
END
GO

