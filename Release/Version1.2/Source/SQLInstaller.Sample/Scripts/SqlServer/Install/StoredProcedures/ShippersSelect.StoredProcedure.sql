
CREATE PROCEDURE ShippersSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		ShipperID,
		CompanyName,
		Phone
	FROM Shippers
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO

