ALTER TABLE EmployeeTerritories  WITH CHECK ADD  CONSTRAINT FK_EmployeeTerritories_Employees FOREIGN KEY(EmployeeID)
REFERENCES Employees (EmployeeID)
GO
ALTER TABLE EmployeeTerritories CHECK CONSTRAINT FK_EmployeeTerritories_Employees
GO
ALTER TABLE EmployeeTerritories  WITH CHECK ADD  CONSTRAINT FK_EmployeeTerritories_Territories FOREIGN KEY(TerritoryID)
REFERENCES Territories (TerritoryID)
GO
ALTER TABLE EmployeeTerritories CHECK CONSTRAINT FK_EmployeeTerritories_Territories
GO
