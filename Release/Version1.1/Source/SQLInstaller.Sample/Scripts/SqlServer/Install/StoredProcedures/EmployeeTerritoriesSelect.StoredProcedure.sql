
CREATE PROCEDURE EmployeeTerritoriesSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		EmployeeID,
		TerritoryID
	FROM EmployeeTerritories
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO
