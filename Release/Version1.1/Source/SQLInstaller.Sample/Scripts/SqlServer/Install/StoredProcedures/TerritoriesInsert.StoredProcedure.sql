
CREATE PROCEDURE TerritoriesInsert
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

	INSERT
	INTO Territories
	(
		TerritoryID,
		TerritoryDescription,
		RegionID
	)
	VALUES
	(
		@TerritoryID,
		@TerritoryDescription,
		@RegionID
	)

	SET @Err = @@Error


	RETURN @Err
END
GO

