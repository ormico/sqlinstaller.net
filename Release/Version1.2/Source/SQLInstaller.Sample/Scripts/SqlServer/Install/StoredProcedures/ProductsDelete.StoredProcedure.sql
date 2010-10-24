
CREATE PROCEDURE ProductsDelete
(
	@ProductID decimal(10,0),
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM Products
	WHERE
		ProductID = @ProductID
	SET @Err = @@Error

	RETURN @Err
END
GO

