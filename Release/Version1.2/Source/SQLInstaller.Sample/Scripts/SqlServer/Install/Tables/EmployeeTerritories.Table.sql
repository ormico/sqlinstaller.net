CREATE TABLE EmployeeTerritories
(
	EmployeeID decimal(10,0) NOT NULL,
	TerritoryID nvarchar(20) NOT NULL,
	CONSTRAINT PK_EmployeeTerritories PRIMARY KEY NONCLUSTERED 
	(
		EmployeeID ASC,
		TerritoryID ASC
	)
)
GO
