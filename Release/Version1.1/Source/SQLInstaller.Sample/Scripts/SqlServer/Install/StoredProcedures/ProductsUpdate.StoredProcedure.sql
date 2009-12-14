
CREATE PROCEDURE ProductsUpdate
(
	@ProductID decimal(10,0),
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

	UPDATE Products
	SET
		ProductName = @ProductName,
		SupplierID = @SupplierID,
		CategoryID = @CategoryID,
		QuantityPerUnit = @QuantityPerUnit,
		UnitPrice = @UnitPrice,
		UnitsInStock = @UnitsInStock,
		UnitsOnOrder = @UnitsOnOrder,
		ReorderLevel = @ReorderLevel,
		Discontinued = @Discontinued
	WHERE
		ProductID = @ProductID


	SET @Err = @@Error


	RETURN @Err
END
GO



