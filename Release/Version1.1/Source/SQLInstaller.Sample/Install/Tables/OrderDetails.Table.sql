CREATE TABLE OrderDetails
(
	OrderID int NOT NULL,
	ProductID int NOT NULL,
	UnitPrice money NOT NULL CONSTRAINT DF_Order_Details_UnitPrice  DEFAULT ((0)),
	Quantity smallint NOT NULL CONSTRAINT DF_Order_Details_Quantity  DEFAULT ((1)),
	Discount real NOT NULL CONSTRAINT DF_Order_Details_Discount  DEFAULT ((0)),
	CONSTRAINT PK_Order_Details PRIMARY KEY CLUSTERED 
	(
		OrderID ASC,
		ProductID ASC
	)
)
GO

CREATE NONCLUSTERED INDEX OrderID ON OrderDetails ( OrderID ASC )
GO
CREATE NONCLUSTERED INDEX ProductID ON OrderDetails ( ProductID ASC )
GO
