CREATE TABLE Territories
(
	TerritoryID nvarchar(20) NOT NULL,
	TerritoryDescription nchar(50) NOT NULL,
	RegionID decimal(10,0) NOT NULL,
	CONSTRAINT PK_Territories PRIMARY KEY NONCLUSTERED 
	(
		TerritoryID ASC
	)
)
GO
