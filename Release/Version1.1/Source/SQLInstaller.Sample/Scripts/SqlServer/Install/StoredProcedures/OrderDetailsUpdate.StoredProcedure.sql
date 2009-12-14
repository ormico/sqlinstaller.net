
CREATE PROCEDURE OrderDetailsUpdate
(
	@OrderID decimal(10,0),
	@ProductID decimal(10,0),
	@UnitPrice money,
	@Quantity decimal(5,0),
	@Discount real,
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	UPDATE OrderDetails
	SET
		UnitPrice = @UnitPrice,
		Quantity = @Quantity,
		Discount = @Discount
	WHERE
		OrderID = @OrderID
	AND	ProductID = @ProductID


	SET @Err = @@Error


	RETURN @Err
END
GO



