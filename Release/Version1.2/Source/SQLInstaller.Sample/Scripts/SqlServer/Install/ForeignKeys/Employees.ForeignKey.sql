ALTER TABLE Employees  WITH NOCHECK ADD  CONSTRAINT FK_Employees_Employees FOREIGN KEY(ReportsTo)
REFERENCES Employees (EmployeeID)
GO
ALTER TABLE Employees CHECK CONSTRAINT FK_Employees_Employees
GO
