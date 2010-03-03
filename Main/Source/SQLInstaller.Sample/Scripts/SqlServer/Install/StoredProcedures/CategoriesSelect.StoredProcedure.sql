
CREATE PROCEDURE CategoriesSelect 
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		CategoryID,
		CategoryName,
		Description,
		Picture
	FROM Categories
	
	
	SET @Err = @@Error

	RETURN @Err
END
GO

