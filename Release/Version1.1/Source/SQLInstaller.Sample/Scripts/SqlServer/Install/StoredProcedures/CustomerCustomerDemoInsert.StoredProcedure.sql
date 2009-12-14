
CREATE PROCEDURE CustomerCustomerDemoInsert
(
	@CustomerID nchar(5),
	@CustomerTypeID nchar(10),
	@AuthUserID nvarchar(64)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	INSERT
	INTO CustomerCustomerDemo
	(
		CustomerID,
		CustomerTypeID
	)
	VALUES
	(
		@CustomerID,
		@CustomerTypeID
	)

	SET @Err = @@Error


	RETURN @Err
END
GO

