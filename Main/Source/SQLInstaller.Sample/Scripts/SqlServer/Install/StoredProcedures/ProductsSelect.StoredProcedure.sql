
CREATE PROCEDURE ProductsSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		ProductID,
		ProductName,
		SupplierID,
		CategoryID,
		QuantityPerUnit,
		UnitPrice,
		UnitsInStock,
		UnitsOnOrder,
		ReorderLevel,
		Discontinued
	FROM Products
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO

