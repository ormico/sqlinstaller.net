
CREATE PROCEDURE OrdersSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		OrderID,
		CustomerID,
		EmployeeID,
		OrderDate,
		RequiredDate,
		ShippedDate,
		ShipVia,
		Freight,
		ShipName,
		ShipAddress,
		ShipCity,
		ShipRegion,
		ShipPostalCode,
		ShipCountry
	FROM Orders
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO

