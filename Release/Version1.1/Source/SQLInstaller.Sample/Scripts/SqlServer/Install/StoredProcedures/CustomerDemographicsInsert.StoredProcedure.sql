
CREATE PROCEDURE CustomerDemographicsInsert
(
	@CustomerTypeID nchar(10),
	@CustomerDesc ntext = NULL,
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	INSERT
	INTO CustomerDemographics
	(
		CustomerTypeID,
		CustomerDesc
	)
	VALUES
	(
		@CustomerTypeID,
		@CustomerDesc
	)

	SET @Err = @@Error


	RETURN @Err
END
GO

