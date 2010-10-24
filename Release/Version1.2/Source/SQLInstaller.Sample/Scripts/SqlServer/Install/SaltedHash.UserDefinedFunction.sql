CREATE FUNCTION SaltedHash
(
	@UserToken varchar(256)
)
RETURNS varbinary(256)
AS
BEGIN
	DECLARE @Salt varchar(32)
	SELECT @Salt = 'AllM3nRCreated='
	
	RETURN HashBytes('SHA1', @Salt + @UserToken)
END

