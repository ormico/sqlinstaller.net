
CREATE PROCEDURE CustomerDemographicsSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		CustomerTypeID,
		CustomerDesc
	FROM CustomerDemographics
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO

