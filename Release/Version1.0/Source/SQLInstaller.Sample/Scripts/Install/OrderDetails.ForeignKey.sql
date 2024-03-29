/****** Object:  Table [dbo].[Order Details]    Script Date: 01/23/2008 12:48:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Order_Details_Orders]') AND parent_object_id = OBJECT_ID(N'[Order Details]'))
ALTER TABLE [Order Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY([OrderID])
REFERENCES [Orders] ([OrderID])
GO
ALTER TABLE [Order Details] CHECK CONSTRAINT [FK_Order_Details_Orders]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Order_Details_Products]') AND parent_object_id = OBJECT_ID(N'[Order Details]'))
ALTER TABLE [Order Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY([ProductID])
REFERENCES [Products] ([ProductID])
GO
ALTER TABLE [Order Details] CHECK CONSTRAINT [FK_Order_Details_Products]
GO
