
CREATE PROCEDURE EmployeesDelete
(
	@EmployeeID decimal(10,0),
	@AuthUserID nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT OFF
	EXEC SetUserContext @AuthUserID
	DECLARE @Err int

	DELETE
	FROM Employees
	WHERE
		EmployeeID = @EmployeeID
	SET @Err = @@Error

	RETURN @Err
END
GO

