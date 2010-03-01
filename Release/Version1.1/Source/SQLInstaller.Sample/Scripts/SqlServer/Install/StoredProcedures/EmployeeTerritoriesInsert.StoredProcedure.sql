
CREATE PROCEDURE EmployeeTerritoriesInsert
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

	INSERT
	INTO EmployeeTerritories
	(
		EmployeeID,
		TerritoryID
	)
	VALUES
	(
		@EmployeeID,
		@TerritoryID
	)

	SET @Err = @@Error


	RETURN @Err
END
GO

