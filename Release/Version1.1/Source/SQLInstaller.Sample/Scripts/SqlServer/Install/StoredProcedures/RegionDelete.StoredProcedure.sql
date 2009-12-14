
CREATE PROCEDURE RegionDelete
(
	@RegionID decimal(10,0),
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM Region
	WHERE
		RegionID = @RegionID
	SET @Err = @@Error

	RETURN @Err
END
GO

