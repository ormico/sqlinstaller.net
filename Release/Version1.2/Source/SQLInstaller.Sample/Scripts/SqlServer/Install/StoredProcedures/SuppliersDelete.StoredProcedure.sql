
CREATE PROCEDURE SuppliersDelete
(
	@SupplierID decimal(10,0),
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM Suppliers
	WHERE
		SupplierID = @SupplierID
	SET @Err = @@Error

	RETURN @Err
END
GO

