CREATE TABLE Categories
(
	CategoryID int IDENTITY(1,1) NOT NULL,
	CategoryName nvarchar(15) NOT NULL,
	Description ntext NULL,
	Picture image NULL,
	CONSTRAINT PK_Categories PRIMARY KEY CLUSTERED 
	(
		CategoryID ASC
	)
)
GO

CREATE NONCLUSTERED INDEX CategoryName ON Categories 
(
	CategoryName ASC
)
GO
