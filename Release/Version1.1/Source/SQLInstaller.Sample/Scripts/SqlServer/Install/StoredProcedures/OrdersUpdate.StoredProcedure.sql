
CREATE PROCEDURE OrdersUpdate
(
	@OrderID decimal(10,0),
	@CustomerID nchar(5) = NULL,
	@AuthEmployeeID decimal(10,0) = NULL,
	@OrderDate datetime = NULL,
	@RequiredDate datetime = NULL,
	@ShippedDate datetime = NULL,
	@ShipVia decimal(10,0) = NULL,
	@Freight money = NULL,
	@ShipName nvarchar(40) = NULL,
	@ShipAddress nvarchar(60) = NULL,
	@ShipCity nvarchar(15) = NULL,
	@ShipRegion nvarchar(15) = NULL,
	@ShipPostalCode nvarchar(10) = NULL,
	@ShipCountry nvarchar(15) = NULL,
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	UPDATE Orders
	SET
		CustomerID = @CustomerID,
		EmployeeID = @AuthEmployeeID,
		OrderDate = @OrderDate,
		RequiredDate = @RequiredDate,
		ShippedDate = @ShippedDate,
		ShipVia = @ShipVia,
		Freight = @Freight,
		ShipName = @ShipName,
		ShipAddress = @ShipAddress,
		ShipCity = @ShipCity,
		ShipRegion = @ShipRegion,
		ShipPostalCode = @ShipPostalCode,
		ShipCountry = @ShipCountry
	WHERE
		OrderID = @OrderID


	SET @Err = @@Error


	RETURN @Err
END
GO



