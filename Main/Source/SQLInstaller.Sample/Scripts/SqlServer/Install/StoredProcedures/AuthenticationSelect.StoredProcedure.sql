CREATE PROCEDURE AuthenticationSelect
(
	@UserID nvarchar(255),
	@UserToken varchar(256)
) 
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @IsAuthorized BIT

	SELECT @IsAuthorized = 0

	IF EXISTS 
	(
		SELECT	UserID
		FROM	Employees
		WHERE	UserID = @UserID
		AND		UserToken = dbo.SaltedHash(@UserToken)
	)
		SELECT @IsAuthorized = 1

	SELECT @IsAuthorized AS IsAuthorized
END
GO
