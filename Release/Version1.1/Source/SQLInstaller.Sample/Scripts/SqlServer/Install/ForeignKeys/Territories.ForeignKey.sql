ALTER TABLE Territories  WITH CHECK ADD  CONSTRAINT FK_Territories_Region FOREIGN KEY(RegionID)
REFERENCES Region (RegionID)
GO
ALTER TABLE Territories CHECK CONSTRAINT FK_Territories_Region
GO
