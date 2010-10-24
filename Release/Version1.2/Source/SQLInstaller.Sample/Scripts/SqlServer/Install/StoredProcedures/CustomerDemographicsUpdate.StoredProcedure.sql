
CREATE PROCEDURE CustomerDemographicsUpdate
(
	@CustomerTypeID nchar(10),
	@CustomerDesc ntext = NULL,
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	UPDATE CustomerDemographics
	SET
		CustomerDesc = @CustomerDesc
	WHERE
		CustomerTypeID = @CustomerTypeID


	SET @Err = @@Error


	RETURN @Err
END
GO



