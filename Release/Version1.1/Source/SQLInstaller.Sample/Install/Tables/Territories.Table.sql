CREATE TABLE Territories
(
	TerritoryID nvarchar(20) NOT NULL,
	TerritoryDescription nchar(50) NOT NULL,
	RegionID int NOT NULL,
	CONSTRAINT PK_Territories PRIMARY KEY NONCLUSTERED 
	(
		TerritoryID ASC
	)
)
GO
