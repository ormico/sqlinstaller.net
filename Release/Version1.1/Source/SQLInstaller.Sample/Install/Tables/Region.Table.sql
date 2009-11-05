CREATE TABLE Region
(
	RegionID int NOT NULL,
	RegionDescription nchar(50) NOT NULL,
	CONSTRAINT PK_Region PRIMARY KEY NONCLUSTERED 
	(
		RegionID ASC
	)
)
GO
