
CREATE PROCEDURE CategoriesDelete
(
	@CategoryID decimal(10,0),
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM Categories
	WHERE
		CategoryID = @CategoryID
	SET @Err = @@Error

	RETURN @Err
END
GO

