CREATE TABLE Shippers
(
	ShipperID decimal(10,0) IDENTITY(1,1) NOT NULL,
	CompanyName nvarchar(40) NOT NULL,
	Phone nvarchar(24) NULL,
	CONSTRAINT PK_Shippers PRIMARY KEY CLUSTERED 
	(
		ShipperID ASC
	)
)
GO

CREATE UNIQUE NONCLUSTERED INDEX ShipperName ON Shippers ( CompanyName ASC )
GO
