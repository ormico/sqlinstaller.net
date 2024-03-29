CREATE TABLE Categories
(
	CategoryID decimal(10,0) IDENTITY(1,1) NOT NULL,
	CategoryName nvarchar(15) NOT NULL,
	Description ntext NULL,
	Picture image NULL,
	CONSTRAINT PK_Categories PRIMARY KEY CLUSTERED 
	(
		CategoryID ASC
	)
)
GO

CREATE UNIQUE NONCLUSTERED INDEX CategoryName ON Categories 
(
	CategoryName ASC
)
GO
