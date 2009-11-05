CREATE TABLE EmployeeTerritories
(
	EmployeeID int NOT NULL,
	TerritoryID nvarchar(20) NOT NULL,
	CONSTRAINT PK_EmployeeTerritories PRIMARY KEY NONCLUSTERED 
	(
		EmployeeID ASC,
		TerritoryID ASC
	)
)
GO
