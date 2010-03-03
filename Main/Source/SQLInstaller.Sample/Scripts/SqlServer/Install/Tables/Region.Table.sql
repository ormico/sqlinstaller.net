CREATE TABLE Region
(
	RegionID decimal(10,0) NOT NULL,
	RegionDescription nchar(50) NOT NULL,
	CONSTRAINT PK_Region PRIMARY KEY NONCLUSTERED 
	(
		RegionID ASC
	)
)
GO
