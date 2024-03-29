CREATE TABLE Employees
(
	EmployeeID decimal(10,0) IDENTITY(1,1) NOT NULL,
	LastName nvarchar(20) NOT NULL,
	FirstName nvarchar(10) NOT NULL,
	Title nvarchar(30) NULL,
	TitleOfCourtesy nvarchar(25) NULL,
	BirthDate datetime NULL,
	HireDate datetime NULL,
	Address nvarchar(60) NULL,
	City nvarchar(15) NULL,
	Region nvarchar(15) NULL,
	PostalCode nvarchar(10) NULL,
	Country nvarchar(15) NULL,
	HomePhone nvarchar(24) NULL,
	Extension nvarchar(4) NULL,
	Photo image NULL,
	Notes ntext NULL,
	ReportsTo decimal(10,0) NULL,
	PhotoPath nvarchar(255) NULL,
	UserID nvarchar(255) NOT NULL,
	UserToken varbinary(256) NOT NULL,
	CONSTRAINT PK_Employees PRIMARY KEY CLUSTERED 
	(
		EmployeeID ASC
	)
)
GO

ALTER TABLE Employees  WITH NOCHECK ADD  CONSTRAINT CK_Birthdate CHECK  ((BirthDate<getdate()))
GO
ALTER TABLE Employees CHECK CONSTRAINT CK_Birthdate
GO

CREATE NONCLUSTERED INDEX LastName ON Employees ( LastName ASC )
GO
CREATE NONCLUSTERED INDEX PostalCode ON Employees ( PostalCode ASC )
GO
CREATE UNIQUE NONCLUSTERED INDEX Employees_UserID ON Employees ( UserID ASC )
GO