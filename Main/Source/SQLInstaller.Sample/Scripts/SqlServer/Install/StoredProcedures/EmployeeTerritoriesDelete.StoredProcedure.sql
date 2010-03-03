
CREATE PROCEDURE EmployeeTerritoriesDelete
(
	@EmployeeID decimal(10,0),
	@TerritoryID nvarchar(20),
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM EmployeeTerritories
	WHERE
		EmployeeID = @EmployeeID AND
		TerritoryID = @TerritoryID
	SET @Err = @@Error

	RETURN @Err
END
GO

