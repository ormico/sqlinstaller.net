ALTER TABLE OrderDetails  WITH NOCHECK ADD  CONSTRAINT FK_Order_Details_Orders FOREIGN KEY(OrderID)
REFERENCES Orders (OrderID)
GO
ALTER TABLE OrderDetails CHECK CONSTRAINT FK_Order_Details_Orders
ALTER TABLE OrderDetails  WITH NOCHECK ADD  CONSTRAINT FK_Order_Details_Products FOREIGN KEY(ProductID)
REFERENCES Products (ProductID)
GO
ALTER TABLE OrderDetails CHECK CONSTRAINT FK_Order_Details_Products
GO
