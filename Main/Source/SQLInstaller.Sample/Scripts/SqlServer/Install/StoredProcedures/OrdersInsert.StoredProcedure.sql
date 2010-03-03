
CREATE PROCEDURE OrdersInsert
(
	@OrderID decimal(10,0) = NULL output,
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
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	INSERT
	INTO Orders
	(
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
	)
	VALUES
	(
		@CustomerID,
		@AuthEmployeeID,
		@OrderDate,
		@RequiredDate,
		@ShippedDate,
		@ShipVia,
		@Freight,
		@ShipName,
		@ShipAddress,
		@ShipCity,
		@ShipRegion,
		@ShipPostalCode,
		@ShipCountry
	)

	SET @Err = @@Error

	SELECT @OrderID = SCOPE_IDENTITY()

	RETURN @Err
END
GO

