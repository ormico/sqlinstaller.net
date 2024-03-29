CREATE TABLE Products
(
	ProductID decimal(10,0) IDENTITY(1,1) NOT NULL,
	ProductName nvarchar(40) NOT NULL,
	SupplierID decimal(10,0) NULL,
	CategoryID decimal(10,0) NULL,
	QuantityPerUnit nvarchar(20) NULL,
	UnitPrice money NULL CONSTRAINT DF_Products_UnitPrice  DEFAULT ((0)),
	UnitsInStock decimal(5,0) NULL CONSTRAINT DF_Products_UnitsInStock  DEFAULT ((0)),
	UnitsOnOrder decimal(5,0) NULL CONSTRAINT DF_Products_UnitsOnOrder  DEFAULT ((0)),
	ReorderLevel decimal(5,0) NULL CONSTRAINT DF_Products_ReorderLevel  DEFAULT ((0)),
	Discontinued bit NOT NULL CONSTRAINT DF_Products_Discontinued  DEFAULT ((0)),
	CONSTRAINT PK_Products PRIMARY KEY CLUSTERED 
	(
		ProductID ASC
	)
)
GO

ALTER TABLE Products  WITH NOCHECK ADD  CONSTRAINT CK_Products_UnitPrice CHECK  ((UnitPrice>=(0)))
GO
ALTER TABLE Products CHECK CONSTRAINT CK_Products_UnitPrice
GO
ALTER TABLE Products  WITH NOCHECK ADD  CONSTRAINT CK_ReorderLevel CHECK  ((ReorderLevel>=(0)))
GO
ALTER TABLE Products CHECK CONSTRAINT CK_ReorderLevel
GO
ALTER TABLE Products  WITH NOCHECK ADD  CONSTRAINT CK_UnitsInStock CHECK  ((UnitsInStock>=(0)))
GO
ALTER TABLE Products CHECK CONSTRAINT CK_UnitsInStock
GO
ALTER TABLE Products  WITH NOCHECK ADD  CONSTRAINT CK_UnitsOnOrder CHECK  ((UnitsOnOrder>=(0)))
GO
ALTER TABLE Products CHECK CONSTRAINT CK_UnitsOnOrder
GO

CREATE NONCLUSTERED INDEX CategoriesProducts ON Products ( CategoryID ASC )
GO
CREATE NONCLUSTERED INDEX CategoryID ON Products ( CategoryID ASC )
GO
CREATE UNIQUE NONCLUSTERED INDEX ProductName ON Products ( ProductName ASC )
GO
CREATE NONCLUSTERED INDEX SupplierID ON Products ( SupplierID ASC )
GO
