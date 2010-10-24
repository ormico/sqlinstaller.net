
CREATE PROCEDURE RegionSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		RegionID,
		RegionDescription
	FROM Region
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO

