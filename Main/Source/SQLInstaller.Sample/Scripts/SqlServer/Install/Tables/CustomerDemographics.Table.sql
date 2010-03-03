CREATE TABLE CustomerDemographics
(
	CustomerTypeID nchar(10) NOT NULL,
	CustomerDesc ntext NULL,
	CONSTRAINT PK_CustomerDemographics PRIMARY KEY NONCLUSTERED 
	(
		CustomerTypeID ASC
	)
)
GO
