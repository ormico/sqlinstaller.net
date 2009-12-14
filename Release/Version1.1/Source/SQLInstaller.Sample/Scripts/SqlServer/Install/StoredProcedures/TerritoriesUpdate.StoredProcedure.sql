
CREATE PROCEDURE TerritoriesUpdate
(
	@TerritoryID nvarchar(20),
	@TerritoryDescription nchar(50),
	@RegionID decimal(10,0),
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	UPDATE Territories
	SET
		TerritoryDescription = @TerritoryDescription,
		RegionID = @RegionID
	WHERE
		TerritoryID = @TerritoryID


	SET @Err = @@Error


	RETURN @Err
END
GO



