
CREATE PROCEDURE RegionInsert
(
	@RegionID decimal(10,0),
	@RegionDescription nchar(50),
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	INSERT
	INTO Region
	(
		RegionID,
		RegionDescription
	)
	VALUES
	(
		@RegionID,
		@RegionDescription
	)

	SET @Err = @@Error


	RETURN @Err
END
GO

