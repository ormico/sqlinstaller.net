CREATE TABLE Orders
(
	OrderID decimal(10,0) IDENTITY(1,1) NOT NULL,
	CustomerID nchar(5) NULL,
	EmployeeID decimal(10,0) NULL,
	OrderDate datetime NULL,
	RequiredDate datetime NULL,
	ShippedDate datetime NULL,
	ShipVia decimal(10,0) NULL,
	Freight money NULL CONSTRAINT DF_Orders_Freight  DEFAULT ((0)),
	ShipName nvarchar(40) NULL,
	ShipAddress nvarchar(60) NULL,
	ShipCity nvarchar(15) NULL,
	ShipRegion nvarchar(15) NULL,
	ShipPostalCode nvarchar(10) NULL,
	ShipCountry nvarchar(15) NULL,
	CONSTRAINT PK_Orders PRIMARY KEY CLUSTERED 
	(
		OrderID ASC
	)
)
GO

CREATE NONCLUSTERED INDEX CustomerID ON Orders ( CustomerID ASC )
GO
CREATE NONCLUSTERED INDEX EmployeeID ON Orders ( EmployeeID ASC )
GO
CREATE NONCLUSTERED INDEX OrderDate ON Orders ( OrderDate ASC )
GO
CREATE NONCLUSTERED INDEX ShippedDate ON Orders ( ShippedDate ASC )
GO
CREATE NONCLUSTERED INDEX ShippersOrders ON Orders ( ShipVia ASC )
GO
CREATE NONCLUSTERED INDEX ShipPostalCode ON Orders ( ShipPostalCode ASC )
GO
