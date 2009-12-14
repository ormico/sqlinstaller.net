
CREATE PROCEDURE ShippersDelete
(
	@ShipperID decimal(10,0),
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM Shippers
	WHERE
		ShipperID = @ShipperID
	SET @Err = @@Error

	RETURN @Err
END
GO

