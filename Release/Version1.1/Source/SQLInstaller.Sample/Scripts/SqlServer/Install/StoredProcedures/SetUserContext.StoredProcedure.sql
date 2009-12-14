CREATE PROCEDURE SetUserContext
(
	@AuthUserID nvarchar(64)
)
AS
BEGIN
	DECLARE @CONTEXT_INFO varbinary(128)
	
	SELECT @CONTEXT_INFO = CONVERT(varbinary(128), @AuthUserID)
	
	SET CONTEXT_INFO @CONTEXT_INFO
END

