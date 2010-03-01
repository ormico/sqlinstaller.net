
CREATE PROCEDURE CategoriesInsert
(
	@CategoryID decimal(10,0) = NULL output,
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

	INSERT
	INTO Categories
	(
		CategoryName,
		Description,
		Picture
	)
	VALUES
	(
		@CategoryName,
		@Description,
		@Picture
	)

	SET @Err = @@Error

	SELECT @CategoryID = SCOPE_IDENTITY()

	RETURN @Err
END
GO

