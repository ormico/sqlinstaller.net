CREATE TABLE Suppliers
(
	SupplierID decimal(10,0) IDENTITY(1,1) NOT NULL,
	CompanyName nvarchar(40) NOT NULL,
	ContactName nvarchar(30) NULL,
	ContactTitle nvarchar(30) NULL,
	Address nvarchar(60) NULL,
	City nvarchar(15) NULL,
	Region nvarchar(15) NULL,
	PostalCode nvarchar(10) NULL,
	Country nvarchar(15) NULL,
	Phone nvarchar(24) NULL,
	Fax nvarchar(24) NULL,
	HomePage ntext NULL,
	CONSTRAINT PK_Suppliers PRIMARY KEY CLUSTERED 
	(
		SupplierID ASC
	)
)
GO

CREATE UNIQUE NONCLUSTERED INDEX SupplierName ON Suppliers ( CompanyName ASC )
GO
CREATE NONCLUSTERED INDEX PostalCode ON Suppliers ( PostalCode ASC )
GO
