
CREATE PROCEDURE CustomerDemographicsDelete
(
	@CustomerTypeID nchar(10),
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM CustomerDemographics
	WHERE
		CustomerTypeID = @CustomerTypeID
	SET @Err = @@Error

	RETURN @Err
END
GO

