
CREATE PROCEDURE ProductsInsert
(
	@ProductID decimal(10,0) = NULL output,
	@ProductName nvarchar(40),
	@SupplierID decimal(10,0) = NULL,
	@CategoryID decimal(10,0) = NULL,
	@QuantityPerUnit nvarchar(20) = NULL,
	@UnitPrice money = NULL,
	@UnitsInStock decimal(5,0) = NULL,
	@UnitsOnOrder decimal(5,0) = NULL,
	@ReorderLevel decimal(5,0) = NULL,
	@Discontinued bit,
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	INSERT
	INTO Products
	(
		ProductName,
		SupplierID,
		CategoryID,
		QuantityPerUnit,
		UnitPrice,
		UnitsInStock,
		UnitsOnOrder,
		ReorderLevel,
		Discontinued
	)
	VALUES
	(
		@ProductName,
		@SupplierID,
		@CategoryID,
		@QuantityPerUnit,
		@UnitPrice,
		@UnitsInStock,
		@UnitsOnOrder,
		@ReorderLevel,
		@Discontinued
	)

	SET @Err = @@Error

	SELECT @ProductID = SCOPE_IDENTITY()

	RETURN @Err
END
GO

