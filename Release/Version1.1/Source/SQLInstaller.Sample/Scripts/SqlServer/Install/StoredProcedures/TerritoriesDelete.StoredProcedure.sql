
CREATE PROCEDURE TerritoriesDelete
(
	@TerritoryID nvarchar(20),
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM Territories
	WHERE
		TerritoryID = @TerritoryID
	SET @Err = @@Error

	RETURN @Err
END
GO

