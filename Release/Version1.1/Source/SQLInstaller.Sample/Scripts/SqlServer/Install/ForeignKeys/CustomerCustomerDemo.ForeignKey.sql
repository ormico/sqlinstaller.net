ALTER TABLE CustomerCustomerDemo  WITH CHECK ADD  CONSTRAINT FK_CustomerCustomerDemo FOREIGN KEY(CustomerTypeID)
REFERENCES CustomerDemographics (CustomerTypeID)
GO
ALTER TABLE CustomerCustomerDemo CHECK CONSTRAINT FK_CustomerCustomerDemo
GO
ALTER TABLE CustomerCustomerDemo  WITH CHECK ADD  CONSTRAINT FK_CustomerCustomerDemo_Customers FOREIGN KEY(CustomerID)
REFERENCES Customers (CustomerID)
GO
ALTER TABLE CustomerCustomerDemo CHECK CONSTRAINT FK_CustomerCustomerDemo_Customers
GO
