
CREATE PROCEDURE CustomersSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		CustomerID,
		CompanyName,
		ContactName,
		ContactTitle,
		Address,
		City,
		Region,
		PostalCode,
		Country,
		Phone,
		Fax
	FROM Customers
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO

