/****** Object:  Table [dbo].[EmployeeTerritories]    Script Date: 01/23/2008 12:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_EmployeeTerritories_Employees]') AND parent_object_id = OBJECT_ID(N'[EmployeeTerritories]'))
ALTER TABLE [EmployeeTerritories]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeTerritories_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [Employees] ([EmployeeID])
GO
ALTER TABLE [EmployeeTerritories] CHECK CONSTRAINT [FK_EmployeeTerritories_Employees]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_EmployeeTerritories_Territories]') AND parent_object_id = OBJECT_ID(N'[EmployeeTerritories]'))
ALTER TABLE [EmployeeTerritories]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeTerritories_Territories] FOREIGN KEY([TerritoryID])
REFERENCES [Territories] ([TerritoryID])
GO
ALTER TABLE [EmployeeTerritories] CHECK CONSTRAINT [FK_EmployeeTerritories_Territories]
GO
