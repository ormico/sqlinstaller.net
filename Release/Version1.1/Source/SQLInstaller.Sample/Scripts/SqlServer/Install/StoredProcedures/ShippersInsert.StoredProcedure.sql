
CREATE PROCEDURE ShippersInsert
(
	@ShipperID decimal(10,0) = NULL output,
	@CompanyName nvarchar(40),
	@Phone nvarchar(24) = NULL,
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	INSERT
	INTO Shippers
	(
		CompanyName,
		Phone
	)
	VALUES
	(
		@CompanyName,
		@Phone
	)

	SET @Err = @@Error

	SELECT @ShipperID = SCOPE_IDENTITY()

	RETURN @Err
END
GO

