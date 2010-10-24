CREATE TABLE CustomerCustomerDemo
(
	CustomerID nchar(5) NOT NULL,
	CustomerTypeID nchar(10) NOT NULL,
	CONSTRAINT PK_CustomerCustomerDemo PRIMARY KEY NONCLUSTERED 
	(
		CustomerID ASC,
		CustomerTypeID ASC
	)
)
GO
