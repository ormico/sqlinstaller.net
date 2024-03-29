/****** Object:  Table [dbo].[Territories]    Script Date: 01/23/2008 12:48:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Territories_Region]') AND parent_object_id = OBJECT_ID(N'[Territories]'))
ALTER TABLE [Territories]  WITH CHECK ADD  CONSTRAINT [FK_Territories_Region] FOREIGN KEY([RegionID])
REFERENCES [Region] ([RegionID])
GO
ALTER TABLE [Territories] CHECK CONSTRAINT [FK_Territories_Region]
GO
