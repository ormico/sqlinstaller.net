/****** Object:  Table [dbo].[Products]    Script Date: 01/23/2008 12:48:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Products_Categories]') AND parent_object_id = OBJECT_ID(N'[Products]'))
ALTER TABLE [Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [Categories] ([CategoryID])
GO
ALTER TABLE [Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Products_Suppliers]') AND parent_object_id = OBJECT_ID(N'[Products]'))
ALTER TABLE [Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [Suppliers] ([SupplierID])
GO
ALTER TABLE [Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
