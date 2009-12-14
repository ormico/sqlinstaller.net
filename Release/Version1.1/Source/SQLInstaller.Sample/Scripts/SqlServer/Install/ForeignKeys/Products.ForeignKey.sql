ALTER TABLE Products  WITH NOCHECK ADD  CONSTRAINT FK_Products_Categories FOREIGN KEY(CategoryID)
REFERENCES Categories (CategoryID)
GO
ALTER TABLE Products CHECK CONSTRAINT FK_Products_Categories
GO
ALTER TABLE Products  WITH NOCHECK ADD  CONSTRAINT FK_Products_Suppliers FOREIGN KEY(SupplierID)
REFERENCES Suppliers (SupplierID)
GO
ALTER TABLE Products CHECK CONSTRAINT FK_Products_Suppliers
GO
