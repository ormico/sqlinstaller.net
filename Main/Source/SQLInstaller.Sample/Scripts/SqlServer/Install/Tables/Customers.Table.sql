CREATE TABLE Customers
(
	CustomerID nchar(5) NOT NULL,
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
	CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED 
	(
		CustomerID ASC
	)
)
GO

CREATE NONCLUSTERED INDEX City ON Customers ( City ASC )
GO
CREATE UNIQUE NONCLUSTERED INDEX CustomerName ON Customers  ( CompanyName ASC )
GO
CREATE NONCLUSTERED INDEX PostalCode ON Customers ( PostalCode ASC )
GO
CREATE NONCLUSTERED INDEX Region ON Customers ( Region ASC )
GO
