/****** Object:  Table [dbo].[Orders]    Script Date: 01/23/2008 12:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Orders_Customers]') AND parent_object_id = OBJECT_ID(N'[Orders]'))
ALTER TABLE [Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [Customers] ([CustomerID])
GO
ALTER TABLE [Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Orders_Employees]') AND parent_object_id = OBJECT_ID(N'[Orders]'))
ALTER TABLE [Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [Employees] ([EmployeeID])
GO
ALTER TABLE [Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Orders_Shippers]') AND parent_object_id = OBJECT_ID(N'[Orders]'))
ALTER TABLE [Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY([ShipVia])
REFERENCES [Shippers] ([ShipperID])
GO
ALTER TABLE [Orders] CHECK CONSTRAINT [FK_Orders_Shippers]
GO
