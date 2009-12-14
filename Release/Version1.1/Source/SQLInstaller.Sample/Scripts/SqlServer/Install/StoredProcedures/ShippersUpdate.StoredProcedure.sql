
CREATE PROCEDURE ShippersUpdate
(
	@ShipperID decimal(10,0),
	@CompanyName nvarchar(40),
	@Phone nvarchar(24) = NULL,
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	UPDATE Shippers
	SET
		CompanyName = @CompanyName,
		Phone = @Phone
	WHERE
		ShipperID = @ShipperID


	SET @Err = @@Error


	RETURN @Err
END
GO



