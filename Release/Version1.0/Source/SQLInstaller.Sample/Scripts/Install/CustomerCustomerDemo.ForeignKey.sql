/****** Object:  Table [dbo].[CustomerCustomerDemo]    Script Date: 01/23/2008 12:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_CustomerCustomerDemo]') AND parent_object_id = OBJECT_ID(N'[CustomerCustomerDemo]'))
ALTER TABLE [CustomerCustomerDemo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY([CustomerTypeID])
REFERENCES [CustomerDemographics] ([CustomerTypeID])
GO
ALTER TABLE [CustomerCustomerDemo] CHECK CONSTRAINT [FK_CustomerCustomerDemo]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_CustomerCustomerDemo_Customers]') AND parent_object_id = OBJECT_ID(N'[CustomerCustomerDemo]'))
ALTER TABLE [CustomerCustomerDemo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCustomerDemo_Customers] FOREIGN KEY([CustomerID])
REFERENCES [Customers] ([CustomerID])
GO
ALTER TABLE [CustomerCustomerDemo] CHECK CONSTRAINT [FK_CustomerCustomerDemo_Customers]
GO
