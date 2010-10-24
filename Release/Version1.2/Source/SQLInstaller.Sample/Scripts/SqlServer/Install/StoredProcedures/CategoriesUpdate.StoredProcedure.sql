
CREATE PROCEDURE CategoriesUpdate
(
	@CategoryID decimal(10,0),
	@CategoryName nvarchar(15),
	@Description ntext = NULL,
	@Picture image = NULL,
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	UPDATE Categories
	SET
		CategoryName = @CategoryName,
		Description = @Description,
		Picture = @Picture
	WHERE
		CategoryID = @CategoryID


	SET @Err = @@Error


	RETURN @Err
END
GO



