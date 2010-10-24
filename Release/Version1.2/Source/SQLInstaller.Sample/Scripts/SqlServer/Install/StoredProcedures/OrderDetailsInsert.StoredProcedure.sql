
CREATE PROCEDURE OrderDetailsInsert
(
	@OrderID decimal(10,0),
	@ProductID decimal(10,0),
	@UnitPrice money,
	@Quantity decimal(5,0),
	@Discount real,
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	INSERT
	INTO OrderDetails
	(
		OrderID,
		ProductID,
		UnitPrice,
		Quantity,
		Discount
	)
	VALUES
	(
		@OrderID,
		@ProductID,
		@UnitPrice,
		@Quantity,
		@Discount
	)

	SET @Err = @@Error


	RETURN @Err
END
GO

