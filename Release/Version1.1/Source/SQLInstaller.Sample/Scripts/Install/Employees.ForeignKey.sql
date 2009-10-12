/****** Object:  Table [dbo].[Employees]    Script Date: 01/23/2008 12:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Employees_Employees]') AND parent_object_id = OBJECT_ID(N'[Employees]'))
ALTER TABLE [Employees]  WITH NOCHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([ReportsTo])
REFERENCES [Employees] ([EmployeeID])
GO
ALTER TABLE [Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
