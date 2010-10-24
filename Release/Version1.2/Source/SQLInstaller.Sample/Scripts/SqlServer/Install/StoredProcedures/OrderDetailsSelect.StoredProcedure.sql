
CREATE PROCEDURE OrderDetailsSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		OrderID,
		ProductID,
		UnitPrice,
		Quantity,
		Discount
	FROM OrderDetails
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO

