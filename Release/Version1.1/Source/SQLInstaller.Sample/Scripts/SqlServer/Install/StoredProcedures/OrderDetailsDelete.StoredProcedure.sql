
CREATE PROCEDURE OrderDetailsDelete
(
	@OrderID decimal(10,0),
	@ProductID decimal(10,0),
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM OrderDetails
	WHERE
		OrderID = @OrderID AND
		ProductID = @ProductID
	SET @Err = @@Error

	RETURN @Err
END
GO

