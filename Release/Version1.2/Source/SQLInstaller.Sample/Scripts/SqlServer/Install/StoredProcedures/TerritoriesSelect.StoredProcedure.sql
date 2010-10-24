
CREATE PROCEDURE TerritoriesSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		TerritoryID,
		TerritoryDescription,
		RegionID
	FROM Territories
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO

