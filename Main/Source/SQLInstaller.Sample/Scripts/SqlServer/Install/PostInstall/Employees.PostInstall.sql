SET IDENTITY_INSERT Employees ON

INSERT INTO Employees (EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, Notes, ReportsTo, PhotoPath, UserID)
VALUES (1, 'Davolio', 'Nancy', 'Sales Representative', 'Ms.', '12/08/1948 00:00:00', '05/01/1992 00:00:00', '507 - 20th Ave. E. Apt. 2A', 'Seattle', 'WA', '98122', 'USA', '(206) 555-9857', '5467', 'Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.', 2, 'http://accweb/emmployees/davolio.bmp','NDavolio');
INSERT INTO Employees (EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, Notes, ReportsTo, PhotoPath, UserID)
VALUES (2, 'Fuller', 'Andrew', 'Vice President, Sales', 'Dr.', '02/19/1952 00:00:00', '08/14/1992 00:00:00', '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'USA', '(206) 555-9482', '3457', 'Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.', NULL, 'http://accweb/emmployees/fuller.bmp','AFuller');
INSERT INTO Employees (EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, Notes, ReportsTo, PhotoPath, UserID)
VALUES (3, 'Leverling', 'Janet', 'Sales Representative', 'Ms.', '08/30/1963 00:00:00', '04/01/1992 00:00:00', '722 Moss Bay Blvd.', 'Kirkland', 'WA', '98033', 'USA', '(206) 555-3412', '3355', 'Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.', 2, 'http://accweb/emmployees/leverling.bmp','JLeverling');
INSERT INTO Employees (EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, Notes, ReportsTo, PhotoPath, UserID)
VALUES (4, 'Peacock', 'Margaret', 'Sales Representative', 'Mrs.', '09/19/1937 00:00:00', '05/03/1993 00:00:00', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', 'USA', '(206) 555-8122', '5176', 'Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.', 2, 'http://accweb/emmployees/peacock.bmp','MPeacock');
INSERT INTO Employees (EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, Notes, ReportsTo, PhotoPath, UserID)
VALUES (5, 'Buchanan', 'Steven', 'Sales Manager', 'Mr.', '03/04/1955 00:00:00', '10/17/1993 00:00:00', '14 Garrett Hill', 'London', NULL, 'SW1 8JR', 'UK', '(71) 555-4848', '3453', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.', 2, 'http://accweb/emmployees/buchanan.bmp','SBuchanan');
INSERT INTO Employees (EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, Notes, ReportsTo, PhotoPath, UserID)
VALUES (6, 'Suyama', 'Michael', 'Sales Representative', 'Mr.', '07/02/1963 00:00:00', '10/17/1993 00:00:00', 'Coventry House Miner Rd.', 'London', NULL, 'EC2 7JR', 'UK', '(71) 555-7773', '428', 'Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.', 5, 'http://accweb/emmployees/davolio.bmp','MSuyama');
INSERT INTO Employees (EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, Notes, ReportsTo, PhotoPath, UserID)
VALUES (7, 'King', 'Robert', 'Sales Representative', 'Mr.', '05/29/1960 00:00:00', '01/02/1994 00:00:00', 'Edgeham Hollow Winchester Way', 'London', NULL, 'RG1 9SP', 'UK', '(71) 555-5598', '465', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office in March 1993.', 5, 'http://accweb/emmployees/davolio.bmp','RKing');
INSERT INTO Employees (EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, Notes, ReportsTo, PhotoPath, UserID)
VALUES (8, 'Callahan', 'Laura', 'Inside Sales Coordinator', 'Ms.', '01/09/1958 00:00:00', '03/05/1994 00:00:00', '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', 'USA', '(206) 555-1189', '2344', 'Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.', 2, 'http://accweb/emmployees/davolio.bmp','LCallahan');
INSERT INTO Employees (EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, Notes, ReportsTo, PhotoPath, UserID)
VALUES (9, 'Dodsworth', 'Anne', 'Sales Representative', 'Ms.', '01/27/1966 00:00:00', '11/15/1994 00:00:00', '7 Houndstooth Rd.', 'London', NULL, 'WG2 7LT', 'UK', '(71) 555-4444', '452', 'Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.', 5, 'http://accweb/emmployees/davolio.bmp','ADodsworth');

SET IDENTITY_INSERT Employees OFF
GO

-- Update UserID columns in the Employees table
-- Requires that the connected user is using integrated security/domain acct
DECLARE @DomainName VARCHAR(128)
DECLARE @UserName VARCHAR(128)

SELECT	@UserName = nt_username,
		@DomainName = nt_domain
FROM	master..sysprocesses
WHERE	spid = @@SPID

UPDATE	Employees
SET		UserID = @DomainName + '\' + @UserName
WHERE	EmployeeID = 2

SELECT	@DomainName = nt_domain
FROM	master..sysprocesses
WHERE	spid = @@SPID

UPDATE	Employees
SET		UserID = @DomainName + '\' + 'qa-user' + cast(EmployeeID as VARCHAR(20))
WHERE	EmployeeID <>2
GO
