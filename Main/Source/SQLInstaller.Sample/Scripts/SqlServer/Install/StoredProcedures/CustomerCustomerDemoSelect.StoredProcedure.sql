CREATE PROCEDURE CustomerCustomerDemoSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		CustomerID,
		CustomerTypeID
	FROM CustomerCustomerDemo
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO
