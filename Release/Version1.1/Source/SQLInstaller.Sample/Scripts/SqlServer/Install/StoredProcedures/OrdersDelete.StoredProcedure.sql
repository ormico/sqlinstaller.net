
CREATE PROCEDURE OrdersDelete
(
	@OrderID decimal(10,0),
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM Orders
	WHERE
		OrderID = @OrderID
	SET @Err = @@Error

	RETURN @Err
END
GO

