
CREATE PROCEDURE RegionUpdate
(
	@RegionID decimal(10,0),
	@RegionDescription nchar(50),
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	UPDATE Region
	SET
		RegionDescription = @RegionDescription
	WHERE
		RegionID = @RegionID


	SET @Err = @@Error


	RETURN @Err
END
GO



