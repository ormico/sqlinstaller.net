
CREATE PROCEDURE SuppliersSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		SupplierID,
		CompanyName,
		ContactName,
		ContactTitle,
		Address,
		City,
		Region,
		PostalCode,
		Country,
		Phone,
		Fax,
		HomePage
	FROM Suppliers
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO

