BEGIN
EXECUTE IMMEDIATE 'ALTER TRIGGER ORDERS_BIU DISABLE';
EXECUTE IMMEDIATE 'ALTER SESSION set NLS_DATE_FORMAT = ''MM/DD/YYYY HH24:MI:SS''';
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10248, 'VINET', 5, '07/04/1996 00:00:00', '08/01/1996 00:00:00', '07/16/1996 00:00:00', 3, 32, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10249, 'TOMSP', 6, '07/05/1996 00:00:00', '08/16/1996 00:00:00', '07/10/1996 00:00:00', 1, 11, 'Toms Spezialit?ten', 'Luisenstr. 48', 'M?nster', NULL, '44087', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10250, 'HANAR', 4, '07/08/1996 00:00:00', '08/05/1996 00:00:00', '07/12/1996 00:00:00', 2, 65, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10251, 'VICTE', 3, '07/08/1996 00:00:00', '08/05/1996 00:00:00', '07/15/1996 00:00:00', 1, 41, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10252, 'SUPRD', 4, '07/09/1996 00:00:00', '08/06/1996 00:00:00', '07/11/1996 00:00:00', 2, 51, 'Supr?mes d?lices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10253, 'HANAR', 3, '07/10/1996 00:00:00', '07/24/1996 00:00:00', '07/16/1996 00:00:00', 2, 58, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10254, 'CHOPS', 5, '07/11/1996 00:00:00', '08/08/1996 00:00:00', '07/23/1996 00:00:00', 2, 22, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10255, 'RICSU', 9, '07/12/1996 00:00:00', '08/09/1996 00:00:00', '07/15/1996 00:00:00', 3, 148, 'Richter Supermarkt', 'Starenweg 5', 'Gen?ve', NULL, '1204', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10256, 'WELLI', 3, '07/15/1996 00:00:00', '08/12/1996 00:00:00', '07/17/1996 00:00:00', 2, 13, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10257, 'HILAA', 4, '07/16/1996 00:00:00', '08/13/1996 00:00:00', '07/22/1996 00:00:00', 3, 81, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10258, 'ERNSH', 1, '07/17/1996 00:00:00', '08/14/1996 00:00:00', '07/23/1996 00:00:00', 1, 140, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10259, 'CENTC', 4, '07/18/1996 00:00:00', '08/15/1996 00:00:00', '07/25/1996 00:00:00', 3, 3, 'Centro comercial Moctezuma', 'Sierras de Granada 9993', 'M?xico D.F.', NULL, '05022', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10260, 'OTTIK', 4, '07/19/1996 00:00:00', '08/16/1996 00:00:00', '07/29/1996 00:00:00', 1, 55, 'Ottilies K?seladen', 'Mehrheimerstr. 369', 'K?ln', NULL, '50739', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10261, 'QUEDE', 4, '07/19/1996 00:00:00', '08/16/1996 00:00:00', '07/30/1996 00:00:00', 2, 3, 'Que Del?cia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10262, 'RATTC', 8, '07/22/1996 00:00:00', '08/19/1996 00:00:00', '07/25/1996 00:00:00', 3, 48, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10263, 'ERNSH', 9, '07/23/1996 00:00:00', '08/20/1996 00:00:00', '07/31/1996 00:00:00', 3, 146, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10264, 'FOLKO', 6, '07/24/1996 00:00:00', '08/21/1996 00:00:00', '08/23/1996 00:00:00', 3, 3, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10265, 'BLONP', 2, '07/25/1996 00:00:00', '08/22/1996 00:00:00', '08/12/1996 00:00:00', 1, 55, 'Blondel p?re et fils', '24, place Kl?ber', 'Strasbourg', NULL, '67000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10266, 'WARTH', 3, '07/26/1996 00:00:00', '09/06/1996 00:00:00', '07/31/1996 00:00:00', 3, 25, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10267, 'FRANK', 4, '07/29/1996 00:00:00', '08/26/1996 00:00:00', '08/06/1996 00:00:00', 1, 208, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10268, 'GROSR', 8, '07/30/1996 00:00:00', '08/27/1996 00:00:00', '08/02/1996 00:00:00', 3, 66, 'GROSELLA-Restaurante', '5? Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10269, 'WHITC', 5, '07/31/1996 00:00:00', '08/14/1996 00:00:00', '08/09/1996 00:00:00', 1, 4, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10270, 'WARTH', 1, '08/01/1996 00:00:00', '08/29/1996 00:00:00', '08/02/1996 00:00:00', 1, 136, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10271, 'SPLIR', 6, '08/01/1996 00:00:00', '08/29/1996 00:00:00', '08/30/1996 00:00:00', 2, 4, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10272, 'RATTC', 6, '08/02/1996 00:00:00', '08/30/1996 00:00:00', '08/06/1996 00:00:00', 2, 98, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10273, 'QUICK', 3, '08/05/1996 00:00:00', '09/02/1996 00:00:00', '08/12/1996 00:00:00', 3, 76, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10274, 'VINET', 6, '08/06/1996 00:00:00', '09/03/1996 00:00:00', '08/16/1996 00:00:00', 1, 6, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10275, 'MAGAA', 1, '08/07/1996 00:00:00', '09/04/1996 00:00:00', '08/09/1996 00:00:00', 1, 26, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10276, 'TORTU', 8, '08/08/1996 00:00:00', '08/22/1996 00:00:00', '08/14/1996 00:00:00', 3, 13, 'Tortuga Restaurante', 'Avda. Azteca 123', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10277, 'MORGK', 2, '08/09/1996 00:00:00', '09/06/1996 00:00:00', '08/13/1996 00:00:00', 3, 125, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10278, 'BERGS', 8, '08/12/1996 00:00:00', '09/09/1996 00:00:00', '08/16/1996 00:00:00', 2, 92, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10279, 'LEHMS', 8, '08/13/1996 00:00:00', '09/10/1996 00:00:00', '08/16/1996 00:00:00', 2, 25, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10280, 'BERGS', 2, '08/14/1996 00:00:00', '09/11/1996 00:00:00', '09/12/1996 00:00:00', 1, 8, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10281, 'ROMEY', 4, '08/14/1996 00:00:00', '08/28/1996 00:00:00', '08/21/1996 00:00:00', 1, 2, 'Romero y tomillo', 'Gran V?a, 1', 'Madrid', NULL, '28001', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10282, 'ROMEY', 4, '08/15/1996 00:00:00', '09/12/1996 00:00:00', '08/21/1996 00:00:00', 1, 12, 'Romero y tomillo', 'Gran V?a, 1', 'Madrid', NULL, '28001', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10283, 'LILAS', 3, '08/16/1996 00:00:00', '09/13/1996 00:00:00', '08/23/1996 00:00:00', 3, 84, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10284, 'LEHMS', 4, '08/19/1996 00:00:00', '09/16/1996 00:00:00', '08/27/1996 00:00:00', 1, 76, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10285, 'QUICK', 1, '08/20/1996 00:00:00', '09/17/1996 00:00:00', '08/26/1996 00:00:00', 2, 76, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10286, 'QUICK', 8, '08/21/1996 00:00:00', '09/18/1996 00:00:00', '08/30/1996 00:00:00', 3, 229, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10287, 'RICAR', 8, '08/22/1996 00:00:00', '09/19/1996 00:00:00', '08/28/1996 00:00:00', 3, 12, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10288, 'REGGC', 4, '08/23/1996 00:00:00', '09/20/1996 00:00:00', '09/03/1996 00:00:00', 1, 7, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10289, 'BSBEV', 7, '08/26/1996 00:00:00', '09/23/1996 00:00:00', '08/28/1996 00:00:00', 3, 22, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10290, 'COMMI', 8, '08/27/1996 00:00:00', '09/24/1996 00:00:00', '09/03/1996 00:00:00', 1, 79, 'Com?rcio Mineiro', 'Av. dos Lus?adas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10291, 'QUEDE', 6, '08/27/1996 00:00:00', '09/24/1996 00:00:00', '09/04/1996 00:00:00', 2, 6, 'Que Del?cia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10292, 'TRADH', 1, '08/28/1996 00:00:00', '09/25/1996 00:00:00', '09/02/1996 00:00:00', 2, 1, 'Tradi?ao Hipermercados', 'Av. In?s de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10293, 'TORTU', 1, '08/29/1996 00:00:00', '09/26/1996 00:00:00', '09/11/1996 00:00:00', 3, 21, 'Tortuga Restaurante', 'Avda. Azteca 123', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10294, 'RATTC', 4, '08/30/1996 00:00:00', '09/27/1996 00:00:00', '09/05/1996 00:00:00', 2, 147, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10295, 'VINET', 2, '09/02/1996 00:00:00', '09/30/1996 00:00:00', '09/10/1996 00:00:00', 2, 1, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10296, 'LILAS', 6, '09/03/1996 00:00:00', '10/01/1996 00:00:00', '09/11/1996 00:00:00', 1, 0, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10297, 'BLONP', 5, '09/04/1996 00:00:00', '10/16/1996 00:00:00', '09/10/1996 00:00:00', 2, 5, 'Blondel p?re et fils', '24, place Kl?ber', 'Strasbourg', NULL, '67000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10298, 'HUNGO', 6, '09/05/1996 00:00:00', '10/03/1996 00:00:00', '09/11/1996 00:00:00', 2, 168, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10299, 'RICAR', 4, '09/06/1996 00:00:00', '10/04/1996 00:00:00', '09/13/1996 00:00:00', 2, 29, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10300, 'MAGAA', 2, '09/09/1996 00:00:00', '10/07/1996 00:00:00', '09/18/1996 00:00:00', 2, 17, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10301, 'WANDK', 8, '09/09/1996 00:00:00', '10/07/1996 00:00:00', '09/17/1996 00:00:00', 2, 45, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10302, 'SUPRD', 4, '09/10/1996 00:00:00', '10/08/1996 00:00:00', '10/09/1996 00:00:00', 2, 6, 'Supr?mes d?lices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10303, 'GODOS', 7, '09/11/1996 00:00:00', '10/09/1996 00:00:00', '09/18/1996 00:00:00', 2, 107, 'Godos Cocina T?pica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10304, 'TORTU', 1, '09/12/1996 00:00:00', '10/10/1996 00:00:00', '09/17/1996 00:00:00', 2, 63, 'Tortuga Restaurante', 'Avda. Azteca 123', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10305, 'OLDWO', 8, '09/13/1996 00:00:00', '10/11/1996 00:00:00', '10/09/1996 00:00:00', 3, 257, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10306, 'ROMEY', 1, '09/16/1996 00:00:00', '10/14/1996 00:00:00', '09/23/1996 00:00:00', 3, 7, 'Romero y tomillo', 'Gran V?a, 1', 'Madrid', NULL, '28001', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10307, 'LONEP', 2, '09/17/1996 00:00:00', '10/15/1996 00:00:00', '09/25/1996 00:00:00', 2, 0, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10308, 'ANATR', 7, '09/18/1996 00:00:00', '10/16/1996 00:00:00', '09/24/1996 00:00:00', 3, 1, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constituci?n 2222', 'M?xico D.F.', NULL, '05021', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10309, 'HUNGO', 3, '09/19/1996 00:00:00', '10/17/1996 00:00:00', '10/23/1996 00:00:00', 1, 47, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10310, 'THEBI', 8, '09/20/1996 00:00:00', '10/18/1996 00:00:00', '09/27/1996 00:00:00', 2, 17, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10311, 'DUMON', 1, '09/20/1996 00:00:00', '10/04/1996 00:00:00', '09/26/1996 00:00:00', 3, 24, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10312, 'WANDK', 2, '09/23/1996 00:00:00', '10/21/1996 00:00:00', '10/03/1996 00:00:00', 2, 40, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10313, 'QUICK', 2, '09/24/1996 00:00:00', '10/22/1996 00:00:00', '10/04/1996 00:00:00', 2, 1, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10314, 'RATTC', 1, '09/25/1996 00:00:00', '10/23/1996 00:00:00', '10/04/1996 00:00:00', 2, 74, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10315, 'ISLAT', 4, '09/26/1996 00:00:00', '10/24/1996 00:00:00', '10/03/1996 00:00:00', 2, 41, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10316, 'RATTC', 1, '09/27/1996 00:00:00', '10/25/1996 00:00:00', '10/08/1996 00:00:00', 3, 150, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10317, 'LONEP', 6, '09/30/1996 00:00:00', '10/28/1996 00:00:00', '10/10/1996 00:00:00', 1, 12, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10318, 'ISLAT', 8, '10/01/1996 00:00:00', '10/29/1996 00:00:00', '10/04/1996 00:00:00', 2, 4, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10319, 'TORTU', 7, '10/02/1996 00:00:00', '10/30/1996 00:00:00', '10/11/1996 00:00:00', 3, 64, 'Tortuga Restaurante', 'Avda. Azteca 123', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10320, 'WARTH', 5, '10/03/1996 00:00:00', '10/17/1996 00:00:00', '10/18/1996 00:00:00', 3, 34, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10321, 'ISLAT', 3, '10/03/1996 00:00:00', '10/31/1996 00:00:00', '10/11/1996 00:00:00', 2, 3, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10322, 'PERIC', 7, '10/04/1996 00:00:00', '11/01/1996 00:00:00', '10/23/1996 00:00:00', 3, 0, 'Pericles Comidas cl?sicas', 'Calle Dr. Jorge Cash 321', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10323, 'KOENE', 4, '10/07/1996 00:00:00', '11/04/1996 00:00:00', '10/14/1996 00:00:00', 1, 4, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10324, 'SAVEA', 9, '10/08/1996 00:00:00', '11/05/1996 00:00:00', '10/10/1996 00:00:00', 1, 214, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10325, 'KOENE', 1, '10/09/1996 00:00:00', '10/23/1996 00:00:00', '10/14/1996 00:00:00', 3, 64, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10326, 'BOLID', 4, '10/10/1996 00:00:00', '11/07/1996 00:00:00', '10/14/1996 00:00:00', 2, 77, 'B?lido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10327, 'FOLKO', 2, '10/11/1996 00:00:00', '11/08/1996 00:00:00', '10/14/1996 00:00:00', 1, 63, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10328, 'FURIB', 4, '10/14/1996 00:00:00', '11/11/1996 00:00:00', '10/17/1996 00:00:00', 3, 87, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10329, 'SPLIR', 4, '10/15/1996 00:00:00', '11/26/1996 00:00:00', '10/23/1996 00:00:00', 2, 191, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10330, 'LILAS', 3, '10/16/1996 00:00:00', '11/13/1996 00:00:00', '10/28/1996 00:00:00', 1, 12, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10331, 'BONAP', 9, '10/16/1996 00:00:00', '11/27/1996 00:00:00', '10/21/1996 00:00:00', 1, 10, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10332, 'MEREP', 3, '10/17/1996 00:00:00', '11/28/1996 00:00:00', '10/21/1996 00:00:00', 2, 52, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10333, 'WARTH', 5, '10/18/1996 00:00:00', '11/15/1996 00:00:00', '10/25/1996 00:00:00', 3, 0, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10334, 'VICTE', 8, '10/21/1996 00:00:00', '11/18/1996 00:00:00', '10/28/1996 00:00:00', 2, 8, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10335, 'HUNGO', 7, '10/22/1996 00:00:00', '11/19/1996 00:00:00', '10/24/1996 00:00:00', 2, 42, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10336, 'PRINI', 7, '10/23/1996 00:00:00', '11/20/1996 00:00:00', '10/25/1996 00:00:00', 2, 15, 'Princesa Isabel Vinhos', 'Estrada da sa?de n. 58', 'Lisboa', NULL, '1756', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10337, 'FRANK', 4, '10/24/1996 00:00:00', '11/21/1996 00:00:00', '10/29/1996 00:00:00', 3, 108, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10338, 'OLDWO', 4, '10/25/1996 00:00:00', '11/22/1996 00:00:00', '10/29/1996 00:00:00', 3, 84, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10339, 'MEREP', 2, '10/28/1996 00:00:00', '11/25/1996 00:00:00', '11/04/1996 00:00:00', 2, 15, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10340, 'BONAP', 1, '10/29/1996 00:00:00', '11/26/1996 00:00:00', '11/08/1996 00:00:00', 3, 166, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10341, 'SIMOB', 7, '10/29/1996 00:00:00', '11/26/1996 00:00:00', '11/05/1996 00:00:00', 3, 26, 'Simons bistro', 'Vinb?ltet 34', 'Kobenhavn', NULL, '1734', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10342, 'FRANK', 4, '10/30/1996 00:00:00', '11/13/1996 00:00:00', '11/04/1996 00:00:00', 2, 54, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10343, 'LEHMS', 4, '10/31/1996 00:00:00', '11/28/1996 00:00:00', '11/06/1996 00:00:00', 1, 110, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10344, 'WHITC', 4, '11/01/1996 00:00:00', '11/29/1996 00:00:00', '11/05/1996 00:00:00', 2, 23, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10345, 'QUICK', 2, '11/04/1996 00:00:00', '12/02/1996 00:00:00', '11/11/1996 00:00:00', 2, 249, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10346, 'RATTC', 3, '11/05/1996 00:00:00', '12/17/1996 00:00:00', '11/08/1996 00:00:00', 3, 142, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10347, 'FAMIA', 4, '11/06/1996 00:00:00', '12/04/1996 00:00:00', '11/08/1996 00:00:00', 3, 3, 'Familia Arquibaldo', 'Rua Or?s, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10348, 'WANDK', 4, '11/07/1996 00:00:00', '12/05/1996 00:00:00', '11/15/1996 00:00:00', 2, 0, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10349, 'SPLIR', 7, '11/08/1996 00:00:00', '12/06/1996 00:00:00', '11/15/1996 00:00:00', 1, 8, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10350, 'LAMAI', 6, '11/11/1996 00:00:00', '12/09/1996 00:00:00', '12/03/1996 00:00:00', 2, 64, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10351, 'ERNSH', 1, '11/11/1996 00:00:00', '12/09/1996 00:00:00', '11/20/1996 00:00:00', 1, 162, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10352, 'FURIB', 3, '11/12/1996 00:00:00', '11/26/1996 00:00:00', '11/18/1996 00:00:00', 3, 1, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10353, 'PICCO', 7, '11/13/1996 00:00:00', '12/11/1996 00:00:00', '11/25/1996 00:00:00', 3, 360, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10354, 'PERIC', 8, '11/14/1996 00:00:00', '12/12/1996 00:00:00', '11/20/1996 00:00:00', 3, 53, 'Pericles Comidas cl?sicas', 'Calle Dr. Jorge Cash 321', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10355, 'AROUT', 6, '11/15/1996 00:00:00', '12/13/1996 00:00:00', '11/20/1996 00:00:00', 1, 41, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10356, 'WANDK', 6, '11/18/1996 00:00:00', '12/16/1996 00:00:00', '11/27/1996 00:00:00', 2, 36, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10357, 'LILAS', 1, '11/19/1996 00:00:00', '12/17/1996 00:00:00', '12/02/1996 00:00:00', 3, 34, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10358, 'LAMAI', 5, '11/20/1996 00:00:00', '12/18/1996 00:00:00', '11/27/1996 00:00:00', 1, 19, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10359, 'SEVES', 5, '11/21/1996 00:00:00', '12/19/1996 00:00:00', '11/26/1996 00:00:00', 3, 288, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10360, 'BLONP', 4, '11/22/1996 00:00:00', '12/20/1996 00:00:00', '12/02/1996 00:00:00', 3, 131, 'Blondel p?re et fils', '24, place Kl?ber', 'Strasbourg', NULL, '67000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10361, 'QUICK', 1, '11/22/1996 00:00:00', '12/20/1996 00:00:00', '12/03/1996 00:00:00', 2, 183, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10362, 'BONAP', 3, '11/25/1996 00:00:00', '12/23/1996 00:00:00', '11/28/1996 00:00:00', 1, 96, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10363, 'DRACD', 4, '11/26/1996 00:00:00', '12/24/1996 00:00:00', '12/04/1996 00:00:00', 3, 30, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10364, 'EASTC', 1, '11/26/1996 00:00:00', '01/07/1997 00:00:00', '12/04/1996 00:00:00', 1, 71, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10365, 'ANTON', 3, '11/27/1996 00:00:00', '12/25/1996 00:00:00', '12/02/1996 00:00:00', 2, 22, 'Antonio Moreno Taquer?a', 'Mataderos  2312', 'M?xico D.F.', NULL, '05023', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10366, 'GALED', 8, '11/28/1996 00:00:00', '01/09/1997 00:00:00', '12/30/1996 00:00:00', 2, 10, 'Galer?a del gastron?mo', 'Rambla de Catalu?a, 23', 'Barcelona', NULL, '8022', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10367, 'VAFFE', 7, '11/28/1996 00:00:00', '12/26/1996 00:00:00', '12/02/1996 00:00:00', 3, 13, 'Vaffeljernet', 'Smagsloget 45', '?rhus', NULL, '8200', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10368, 'ERNSH', 2, '11/29/1996 00:00:00', '12/27/1996 00:00:00', '12/02/1996 00:00:00', 2, 101, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10369, 'SPLIR', 8, '12/02/1996 00:00:00', '12/30/1996 00:00:00', '12/09/1996 00:00:00', 2, 195, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10370, 'CHOPS', 6, '12/03/1996 00:00:00', '12/31/1996 00:00:00', '12/27/1996 00:00:00', 2, 1, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10371, 'LAMAI', 1, '12/03/1996 00:00:00', '12/31/1996 00:00:00', '12/24/1996 00:00:00', 1, 0, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10372, 'QUEEN', 5, '12/04/1996 00:00:00', '01/01/1997 00:00:00', '12/09/1996 00:00:00', 2, 890, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10373, 'HUNGO', 4, '12/05/1996 00:00:00', '01/02/1997 00:00:00', '12/11/1996 00:00:00', 3, 124, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10374, 'WOLZA', 1, '12/05/1996 00:00:00', '01/02/1997 00:00:00', '12/09/1996 00:00:00', 3, 3, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10375, 'HUNGC', 3, '12/06/1996 00:00:00', '01/03/1997 00:00:00', '12/09/1996 00:00:00', 2, 20, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10376, 'MEREP', 1, '12/09/1996 00:00:00', '01/06/1997 00:00:00', '12/13/1996 00:00:00', 2, 20, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10377, 'SEVES', 1, '12/09/1996 00:00:00', '01/06/1997 00:00:00', '12/13/1996 00:00:00', 3, 22, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10378, 'FOLKO', 5, '12/10/1996 00:00:00', '01/07/1997 00:00:00', '12/19/1996 00:00:00', 3, 5, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10379, 'QUEDE', 2, '12/11/1996 00:00:00', '01/08/1997 00:00:00', '12/13/1996 00:00:00', 1, 45, 'Que Del?cia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10380, 'HUNGO', 8, '12/12/1996 00:00:00', '01/09/1997 00:00:00', '01/16/1997 00:00:00', 3, 35, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10381, 'LILAS', 3, '12/12/1996 00:00:00', '01/09/1997 00:00:00', '12/13/1996 00:00:00', 3, 7, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10382, 'ERNSH', 4, '12/13/1996 00:00:00', '01/10/1997 00:00:00', '12/16/1996 00:00:00', 1, 94, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10383, 'AROUT', 8, '12/16/1996 00:00:00', '01/13/1997 00:00:00', '12/18/1996 00:00:00', 3, 34, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10384, 'BERGS', 3, '12/16/1996 00:00:00', '01/13/1997 00:00:00', '12/20/1996 00:00:00', 3, 168, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10385, 'SPLIR', 1, '12/17/1996 00:00:00', '01/14/1997 00:00:00', '12/23/1996 00:00:00', 2, 30, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10386, 'FAMIA', 9, '12/18/1996 00:00:00', '01/01/1997 00:00:00', '12/25/1996 00:00:00', 3, 13, 'Familia Arquibaldo', 'Rua Or?s, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10387, 'SANTG', 1, '12/18/1996 00:00:00', '01/15/1997 00:00:00', '12/20/1996 00:00:00', 2, 93, 'Sant? Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10388, 'SEVES', 2, '12/19/1996 00:00:00', '01/16/1997 00:00:00', '12/20/1996 00:00:00', 1, 34, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10389, 'BOTTM', 4, '12/20/1996 00:00:00', '01/17/1997 00:00:00', '12/24/1996 00:00:00', 2, 47, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10390, 'ERNSH', 6, '12/23/1996 00:00:00', '01/20/1997 00:00:00', '12/26/1996 00:00:00', 1, 126, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10391, 'DRACD', 3, '12/23/1996 00:00:00', '01/20/1997 00:00:00', '12/31/1996 00:00:00', 3, 5, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10392, 'PICCO', 2, '12/24/1996 00:00:00', '01/21/1997 00:00:00', '01/01/1997 00:00:00', 3, 122, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10393, 'SAVEA', 1, '12/25/1996 00:00:00', '01/22/1997 00:00:00', '01/03/1997 00:00:00', 3, 126, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10394, 'HUNGC', 1, '12/25/1996 00:00:00', '01/22/1997 00:00:00', '01/03/1997 00:00:00', 3, 30, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10395, 'HILAA', 6, '12/26/1996 00:00:00', '01/23/1997 00:00:00', '01/03/1997 00:00:00', 1, 184, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10396, 'FRANK', 1, '12/27/1996 00:00:00', '01/10/1997 00:00:00', '01/06/1997 00:00:00', 3, 135, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10397, 'PRINI', 5, '12/27/1996 00:00:00', '01/24/1997 00:00:00', '01/02/1997 00:00:00', 1, 60, 'Princesa Isabel Vinhos', 'Estrada da sa?de n. 58', 'Lisboa', NULL, '1756', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10398, 'SAVEA', 2, '12/30/1996 00:00:00', '01/27/1997 00:00:00', '01/09/1997 00:00:00', 3, 89, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10399, 'VAFFE', 8, '12/31/1996 00:00:00', '01/14/1997 00:00:00', '01/08/1997 00:00:00', 3, 27, 'Vaffeljernet', 'Smagsloget 45', '?rhus', NULL, '8200', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10400, 'EASTC', 1, '01/01/1997 00:00:00', '01/29/1997 00:00:00', '01/16/1997 00:00:00', 3, 83, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10401, 'RATTC', 1, '01/01/1997 00:00:00', '01/29/1997 00:00:00', '01/10/1997 00:00:00', 1, 12, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10402, 'ERNSH', 8, '01/02/1997 00:00:00', '02/13/1997 00:00:00', '01/10/1997 00:00:00', 2, 67, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10403, 'ERNSH', 4, '01/03/1997 00:00:00', '01/31/1997 00:00:00', '01/09/1997 00:00:00', 3, 73, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10404, 'MAGAA', 2, '01/03/1997 00:00:00', '01/31/1997 00:00:00', '01/08/1997 00:00:00', 1, 155, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10405, 'LINOD', 1, '01/06/1997 00:00:00', '02/03/1997 00:00:00', '01/22/1997 00:00:00', 1, 34, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10406, 'QUEEN', 7, '01/07/1997 00:00:00', '02/18/1997 00:00:00', '01/13/1997 00:00:00', 1, 108, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10407, 'OTTIK', 2, '01/07/1997 00:00:00', '02/04/1997 00:00:00', '01/30/1997 00:00:00', 2, 91, 'Ottilies K?seladen', 'Mehrheimerstr. 369', 'K?ln', NULL, '50739', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10408, 'FOLIG', 8, '01/08/1997 00:00:00', '02/05/1997 00:00:00', '01/14/1997 00:00:00', 1, 11, 'Folies gourmandes', '184, chauss?e de Tournai', 'Lille', NULL, '59000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10409, 'OCEAN', 3, '01/09/1997 00:00:00', '02/06/1997 00:00:00', '01/14/1997 00:00:00', 1, 29, 'Oc?ano Atl?ntico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10410, 'BOTTM', 3, '01/10/1997 00:00:00', '02/07/1997 00:00:00', '01/15/1997 00:00:00', 3, 2, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10411, 'BOTTM', 9, '01/10/1997 00:00:00', '02/07/1997 00:00:00', '01/21/1997 00:00:00', 3, 23, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10412, 'WARTH', 8, '01/13/1997 00:00:00', '02/10/1997 00:00:00', '01/15/1997 00:00:00', 2, 3, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10413, 'LAMAI', 3, '01/14/1997 00:00:00', '02/11/1997 00:00:00', '01/16/1997 00:00:00', 2, 95, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10414, 'FAMIA', 2, '01/14/1997 00:00:00', '02/11/1997 00:00:00', '01/17/1997 00:00:00', 3, 21, 'Familia Arquibaldo', 'Rua Or?s, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10415, 'HUNGC', 3, '01/15/1997 00:00:00', '02/12/1997 00:00:00', '01/24/1997 00:00:00', 1, 0, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10416, 'WARTH', 8, '01/16/1997 00:00:00', '02/13/1997 00:00:00', '01/27/1997 00:00:00', 3, 22, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10417, 'SIMOB', 4, '01/16/1997 00:00:00', '02/13/1997 00:00:00', '01/28/1997 00:00:00', 3, 70, 'Simons bistro', 'Vinb?ltet 34', 'Kobenhavn', NULL, '1734', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10418, 'QUICK', 4, '01/17/1997 00:00:00', '02/14/1997 00:00:00', '01/24/1997 00:00:00', 1, 17, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10419, 'RICSU', 4, '01/20/1997 00:00:00', '02/17/1997 00:00:00', '01/30/1997 00:00:00', 2, 137, 'Richter Supermarkt', 'Starenweg 5', 'Gen?ve', NULL, '1204', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10420, 'WELLI', 3, '01/21/1997 00:00:00', '02/18/1997 00:00:00', '01/27/1997 00:00:00', 1, 44, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10421, 'QUEDE', 8, '01/21/1997 00:00:00', '03/04/1997 00:00:00', '01/27/1997 00:00:00', 1, 99, 'Que Del?cia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10422, 'FRANS', 2, '01/22/1997 00:00:00', '02/19/1997 00:00:00', '01/31/1997 00:00:00', 1, 3, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10423, 'GOURL', 6, '01/23/1997 00:00:00', '02/06/1997 00:00:00', '02/24/1997 00:00:00', 3, 24, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10424, 'MEREP', 7, '01/23/1997 00:00:00', '02/20/1997 00:00:00', '01/27/1997 00:00:00', 2, 370, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10425, 'LAMAI', 6, '01/24/1997 00:00:00', '02/21/1997 00:00:00', '02/14/1997 00:00:00', 2, 7, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10426, 'GALED', 4, '01/27/1997 00:00:00', '02/24/1997 00:00:00', '02/06/1997 00:00:00', 1, 18, 'Galer?a del gastron?mo', 'Rambla de Catalu?a, 23', 'Barcelona', NULL, '8022', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10427, 'PICCO', 4, '01/27/1997 00:00:00', '02/24/1997 00:00:00', '03/03/1997 00:00:00', 2, 31, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10428, 'REGGC', 7, '01/28/1997 00:00:00', '02/25/1997 00:00:00', '02/04/1997 00:00:00', 1, 11, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10429, 'HUNGO', 3, '01/29/1997 00:00:00', '03/12/1997 00:00:00', '02/07/1997 00:00:00', 2, 56, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10430, 'ERNSH', 4, '01/30/1997 00:00:00', '02/13/1997 00:00:00', '02/03/1997 00:00:00', 1, 458, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10431, 'BOTTM', 4, '01/30/1997 00:00:00', '02/13/1997 00:00:00', '02/07/1997 00:00:00', 2, 44, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10432, 'SPLIR', 3, '01/31/1997 00:00:00', '02/14/1997 00:00:00', '02/07/1997 00:00:00', 2, 4, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10433, 'PRINI', 3, '02/03/1997 00:00:00', '03/03/1997 00:00:00', '03/04/1997 00:00:00', 3, 73, 'Princesa Isabel Vinhos', 'Estrada da sa?de n. 58', 'Lisboa', NULL, '1756', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10434, 'FOLKO', 3, '02/03/1997 00:00:00', '03/03/1997 00:00:00', '02/13/1997 00:00:00', 2, 17, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10435, 'CONSH', 8, '02/04/1997 00:00:00', '03/18/1997 00:00:00', '02/07/1997 00:00:00', 2, 9, 'Consolidated Holdings', 'Berkeley Gardens 12  Brewery', 'London', NULL, 'WX1 6LT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10436, 'BLONP', 3, '02/05/1997 00:00:00', '03/05/1997 00:00:00', '02/11/1997 00:00:00', 2, 156, 'Blondel p?re et fils', '24, place Kl?ber', 'Strasbourg', NULL, '67000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10437, 'WARTH', 8, '02/05/1997 00:00:00', '03/05/1997 00:00:00', '02/12/1997 00:00:00', 1, 19, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10438, 'TOMSP', 3, '02/06/1997 00:00:00', '03/06/1997 00:00:00', '02/14/1997 00:00:00', 2, 8, 'Toms Spezialit?ten', 'Luisenstr. 48', 'M?nster', NULL, '44087', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10439, 'MEREP', 6, '02/07/1997 00:00:00', '03/07/1997 00:00:00', '02/10/1997 00:00:00', 3, 4, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10440, 'SAVEA', 4, '02/10/1997 00:00:00', '03/10/1997 00:00:00', '02/28/1997 00:00:00', 2, 86, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10441, 'OLDWO', 3, '02/10/1997 00:00:00', '03/24/1997 00:00:00', '03/14/1997 00:00:00', 2, 73, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10442, 'ERNSH', 3, '02/11/1997 00:00:00', '03/11/1997 00:00:00', '02/18/1997 00:00:00', 2, 47, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10443, 'REGGC', 8, '02/12/1997 00:00:00', '03/12/1997 00:00:00', '02/14/1997 00:00:00', 1, 13, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10444, 'BERGS', 3, '02/12/1997 00:00:00', '03/12/1997 00:00:00', '02/21/1997 00:00:00', 3, 3, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10445, 'BERGS', 3, '02/13/1997 00:00:00', '03/13/1997 00:00:00', '02/20/1997 00:00:00', 1, 9, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10446, 'TOMSP', 6, '02/14/1997 00:00:00', '03/14/1997 00:00:00', '02/19/1997 00:00:00', 1, 14, 'Toms Spezialit?ten', 'Luisenstr. 48', 'M?nster', NULL, '44087', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10447, 'RICAR', 4, '02/14/1997 00:00:00', '03/14/1997 00:00:00', '03/07/1997 00:00:00', 2, 68, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10448, 'RANCH', 4, '02/17/1997 00:00:00', '03/17/1997 00:00:00', '02/24/1997 00:00:00', 2, 38, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10449, 'BLONP', 3, '02/18/1997 00:00:00', '03/18/1997 00:00:00', '02/27/1997 00:00:00', 2, 53, 'Blondel p?re et fils', '24, place Kl?ber', 'Strasbourg', NULL, '67000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10450, 'VICTE', 8, '02/19/1997 00:00:00', '03/19/1997 00:00:00', '03/11/1997 00:00:00', 2, 7, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10451, 'QUICK', 4, '02/19/1997 00:00:00', '03/05/1997 00:00:00', '03/12/1997 00:00:00', 3, 189, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10452, 'SAVEA', 8, '02/20/1997 00:00:00', '03/20/1997 00:00:00', '02/26/1997 00:00:00', 1, 140, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10453, 'AROUT', 1, '02/21/1997 00:00:00', '03/21/1997 00:00:00', '02/26/1997 00:00:00', 2, 25, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10454, 'LAMAI', 4, '02/21/1997 00:00:00', '03/21/1997 00:00:00', '02/25/1997 00:00:00', 3, 2, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10455, 'WARTH', 8, '02/24/1997 00:00:00', '04/07/1997 00:00:00', '03/03/1997 00:00:00', 2, 180, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10456, 'KOENE', 8, '02/25/1997 00:00:00', '04/08/1997 00:00:00', '02/28/1997 00:00:00', 2, 8, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10457, 'KOENE', 2, '02/25/1997 00:00:00', '03/25/1997 00:00:00', '03/03/1997 00:00:00', 1, 11, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10458, 'SUPRD', 7, '02/26/1997 00:00:00', '03/26/1997 00:00:00', '03/04/1997 00:00:00', 3, 147, 'Supr?mes d?lices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10459, 'VICTE', 4, '02/27/1997 00:00:00', '03/27/1997 00:00:00', '02/28/1997 00:00:00', 2, 25, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10460, 'FOLKO', 8, '02/28/1997 00:00:00', '03/28/1997 00:00:00', '03/03/1997 00:00:00', 1, 16, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10461, 'LILAS', 1, '02/28/1997 00:00:00', '03/28/1997 00:00:00', '03/05/1997 00:00:00', 3, 148, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10462, 'CONSH', 2, '03/03/1997 00:00:00', '03/31/1997 00:00:00', '03/18/1997 00:00:00', 1, 6, 'Consolidated Holdings', 'Berkeley Gardens 12  Brewery', 'London', NULL, 'WX1 6LT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10463, 'SUPRD', 5, '03/04/1997 00:00:00', '04/01/1997 00:00:00', '03/06/1997 00:00:00', 3, 14, 'Supr?mes d?lices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10464, 'FURIB', 4, '03/04/1997 00:00:00', '04/01/1997 00:00:00', '03/14/1997 00:00:00', 2, 89, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10465, 'VAFFE', 1, '03/05/1997 00:00:00', '04/02/1997 00:00:00', '03/14/1997 00:00:00', 3, 145, 'Vaffeljernet', 'Smagsloget 45', '?rhus', NULL, '8200', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10466, 'COMMI', 4, '03/06/1997 00:00:00', '04/03/1997 00:00:00', '03/13/1997 00:00:00', 1, 11, 'Com?rcio Mineiro', 'Av. dos Lus?adas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10467, 'MAGAA', 8, '03/06/1997 00:00:00', '04/03/1997 00:00:00', '03/11/1997 00:00:00', 2, 4, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10468, 'KOENE', 3, '03/07/1997 00:00:00', '04/04/1997 00:00:00', '03/12/1997 00:00:00', 3, 44, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10469, 'WHITC', 1, '03/10/1997 00:00:00', '04/07/1997 00:00:00', '03/14/1997 00:00:00', 1, 60, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10470, 'BONAP', 4, '03/11/1997 00:00:00', '04/08/1997 00:00:00', '03/14/1997 00:00:00', 2, 64, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10471, 'BSBEV', 2, '03/11/1997 00:00:00', '04/08/1997 00:00:00', '03/18/1997 00:00:00', 3, 45, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10472, 'SEVES', 8, '03/12/1997 00:00:00', '04/09/1997 00:00:00', '03/19/1997 00:00:00', 1, 4, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10473, 'ISLAT', 1, '03/13/1997 00:00:00', '03/27/1997 00:00:00', '03/21/1997 00:00:00', 3, 16, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10474, 'PERIC', 5, '03/13/1997 00:00:00', '04/10/1997 00:00:00', '03/21/1997 00:00:00', 2, 83, 'Pericles Comidas cl?sicas', 'Calle Dr. Jorge Cash 321', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10475, 'SUPRD', 9, '03/14/1997 00:00:00', '04/11/1997 00:00:00', '04/04/1997 00:00:00', 1, 68, 'Supr?mes d?lices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10476, 'HILAA', 8, '03/17/1997 00:00:00', '04/14/1997 00:00:00', '03/24/1997 00:00:00', 3, 4, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10477, 'PRINI', 5, '03/17/1997 00:00:00', '04/14/1997 00:00:00', '03/25/1997 00:00:00', 2, 13, 'Princesa Isabel Vinhos', 'Estrada da sa?de n. 58', 'Lisboa', NULL, '1756', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10478, 'VICTE', 2, '03/18/1997 00:00:00', '04/01/1997 00:00:00', '03/26/1997 00:00:00', 3, 4, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10479, 'RATTC', 3, '03/19/1997 00:00:00', '04/16/1997 00:00:00', '03/21/1997 00:00:00', 3, 708, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10480, 'FOLIG', 6, '03/20/1997 00:00:00', '04/17/1997 00:00:00', '03/24/1997 00:00:00', 2, 1, 'Folies gourmandes', '184, chauss?e de Tournai', 'Lille', NULL, '59000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10481, 'RICAR', 8, '03/20/1997 00:00:00', '04/17/1997 00:00:00', '03/25/1997 00:00:00', 2, 64, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10482, 'LAZYK', 1, '03/21/1997 00:00:00', '04/18/1997 00:00:00', '04/10/1997 00:00:00', 3, 7, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10483, 'WHITC', 7, '03/24/1997 00:00:00', '04/21/1997 00:00:00', '04/25/1997 00:00:00', 2, 15, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10484, 'BSBEV', 3, '03/24/1997 00:00:00', '04/21/1997 00:00:00', '04/01/1997 00:00:00', 3, 6, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10485, 'LINOD', 4, '03/25/1997 00:00:00', '04/08/1997 00:00:00', '03/31/1997 00:00:00', 2, 64, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10486, 'HILAA', 1, '03/26/1997 00:00:00', '04/23/1997 00:00:00', '04/02/1997 00:00:00', 2, 30, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10487, 'QUEEN', 2, '03/26/1997 00:00:00', '04/23/1997 00:00:00', '03/28/1997 00:00:00', 2, 71, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10488, 'FRANK', 8, '03/27/1997 00:00:00', '04/24/1997 00:00:00', '04/02/1997 00:00:00', 2, 4, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10489, 'PICCO', 6, '03/28/1997 00:00:00', '04/25/1997 00:00:00', '04/09/1997 00:00:00', 2, 5, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10490, 'HILAA', 7, '03/31/1997 00:00:00', '04/28/1997 00:00:00', '04/03/1997 00:00:00', 2, 210, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10491, 'FURIB', 8, '03/31/1997 00:00:00', '04/28/1997 00:00:00', '04/08/1997 00:00:00', 3, 16, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10492, 'BOTTM', 3, '04/01/1997 00:00:00', '04/29/1997 00:00:00', '04/11/1997 00:00:00', 1, 62, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10493, 'LAMAI', 4, '04/02/1997 00:00:00', '04/30/1997 00:00:00', '04/10/1997 00:00:00', 3, 10, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10494, 'COMMI', 4, '04/02/1997 00:00:00', '04/30/1997 00:00:00', '04/09/1997 00:00:00', 2, 65, 'Com?rcio Mineiro', 'Av. dos Lus?adas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10495, 'LAUGB', 3, '04/03/1997 00:00:00', '05/01/1997 00:00:00', '04/11/1997 00:00:00', 3, 4, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10496, 'TRADH', 7, '04/04/1997 00:00:00', '05/02/1997 00:00:00', '04/07/1997 00:00:00', 2, 46, 'Tradi?ao Hipermercados', 'Av. In?s de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10497, 'LEHMS', 7, '04/04/1997 00:00:00', '05/02/1997 00:00:00', '04/07/1997 00:00:00', 1, 36, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10498, 'HILAA', 8, '04/07/1997 00:00:00', '05/05/1997 00:00:00', '04/11/1997 00:00:00', 2, 29, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10499, 'LILAS', 4, '04/08/1997 00:00:00', '05/06/1997 00:00:00', '04/16/1997 00:00:00', 2, 102, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10500, 'LAMAI', 6, '04/09/1997 00:00:00', '05/07/1997 00:00:00', '04/17/1997 00:00:00', 1, 42, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10501, 'BLAUS', 9, '04/09/1997 00:00:00', '05/07/1997 00:00:00', '04/16/1997 00:00:00', 3, 8, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10502, 'PERIC', 2, '04/10/1997 00:00:00', '05/08/1997 00:00:00', '04/29/1997 00:00:00', 1, 69, 'Pericles Comidas cl?sicas', 'Calle Dr. Jorge Cash 321', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10503, 'HUNGO', 6, '04/11/1997 00:00:00', '05/09/1997 00:00:00', '04/16/1997 00:00:00', 2, 16, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10504, 'WHITC', 4, '04/11/1997 00:00:00', '05/09/1997 00:00:00', '04/18/1997 00:00:00', 3, 59, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10505, 'MEREP', 3, '04/14/1997 00:00:00', '05/12/1997 00:00:00', '04/21/1997 00:00:00', 3, 7, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10506, 'KOENE', 9, '04/15/1997 00:00:00', '05/13/1997 00:00:00', '05/02/1997 00:00:00', 2, 21, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10507, 'ANTON', 7, '04/15/1997 00:00:00', '05/13/1997 00:00:00', '04/22/1997 00:00:00', 1, 47, 'Antonio Moreno Taquer?a', 'Mataderos  2312', 'M?xico D.F.', NULL, '05023', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10508, 'OTTIK', 1, '04/16/1997 00:00:00', '05/14/1997 00:00:00', '05/13/1997 00:00:00', 2, 4, 'Ottilies K?seladen', 'Mehrheimerstr. 369', 'K?ln', NULL, '50739', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10509, 'BLAUS', 4, '04/17/1997 00:00:00', '05/15/1997 00:00:00', '04/29/1997 00:00:00', 1, 0, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10510, 'SAVEA', 6, '04/18/1997 00:00:00', '05/16/1997 00:00:00', '04/28/1997 00:00:00', 3, 367, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10511, 'BONAP', 4, '04/18/1997 00:00:00', '05/16/1997 00:00:00', '04/21/1997 00:00:00', 3, 350, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10512, 'FAMIA', 7, '04/21/1997 00:00:00', '05/19/1997 00:00:00', '04/24/1997 00:00:00', 2, 3, 'Familia Arquibaldo', 'Rua Or?s, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10513, 'WANDK', 7, '04/22/1997 00:00:00', '06/03/1997 00:00:00', '04/28/1997 00:00:00', 1, 105, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10514, 'ERNSH', 3, '04/22/1997 00:00:00', '05/20/1997 00:00:00', '05/16/1997 00:00:00', 2, 789, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10515, 'QUICK', 2, '04/23/1997 00:00:00', '05/07/1997 00:00:00', '05/23/1997 00:00:00', 1, 204, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10516, 'HUNGO', 2, '04/24/1997 00:00:00', '05/22/1997 00:00:00', '05/01/1997 00:00:00', 3, 62, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10517, 'NORTS', 3, '04/24/1997 00:00:00', '05/22/1997 00:00:00', '04/29/1997 00:00:00', 3, 32, 'North/South', 'South House 300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10518, 'TORTU', 4, '04/25/1997 00:00:00', '05/09/1997 00:00:00', '05/05/1997 00:00:00', 2, 218, 'Tortuga Restaurante', 'Avda. Azteca 123', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10519, 'CHOPS', 6, '04/28/1997 00:00:00', '05/26/1997 00:00:00', '05/01/1997 00:00:00', 3, 91, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10520, 'SANTG', 7, '04/29/1997 00:00:00', '05/27/1997 00:00:00', '05/01/1997 00:00:00', 1, 13, 'Sant? Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10521, 'CACTU', 8, '04/29/1997 00:00:00', '05/27/1997 00:00:00', '05/02/1997 00:00:00', 2, 17, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10522, 'LEHMS', 4, '04/30/1997 00:00:00', '05/28/1997 00:00:00', '05/06/1997 00:00:00', 1, 45, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10523, 'SEVES', 7, '05/01/1997 00:00:00', '05/29/1997 00:00:00', '05/30/1997 00:00:00', 2, 77, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10524, 'BERGS', 1, '05/01/1997 00:00:00', '05/29/1997 00:00:00', '05/07/1997 00:00:00', 2, 244, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10525, 'BONAP', 1, '05/02/1997 00:00:00', '05/30/1997 00:00:00', '05/23/1997 00:00:00', 2, 11, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10526, 'WARTH', 4, '05/05/1997 00:00:00', '06/02/1997 00:00:00', '05/15/1997 00:00:00', 2, 58, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10527, 'QUICK', 7, '05/05/1997 00:00:00', '06/02/1997 00:00:00', '05/07/1997 00:00:00', 1, 41, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10528, 'GREAL', 6, '05/06/1997 00:00:00', '05/20/1997 00:00:00', '05/09/1997 00:00:00', 2, 3, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10529, 'MAISD', 5, '05/07/1997 00:00:00', '06/04/1997 00:00:00', '05/09/1997 00:00:00', 2, 66, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10530, 'PICCO', 3, '05/08/1997 00:00:00', '06/05/1997 00:00:00', '05/12/1997 00:00:00', 2, 339, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10531, 'OCEAN', 7, '05/08/1997 00:00:00', '06/05/1997 00:00:00', '05/19/1997 00:00:00', 1, 8, 'Oc?ano Atl?ntico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10532, 'EASTC', 7, '05/09/1997 00:00:00', '06/06/1997 00:00:00', '05/12/1997 00:00:00', 3, 74, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10533, 'FOLKO', 8, '05/12/1997 00:00:00', '06/09/1997 00:00:00', '05/22/1997 00:00:00', 1, 188, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10534, 'LEHMS', 8, '05/12/1997 00:00:00', '06/09/1997 00:00:00', '05/14/1997 00:00:00', 2, 27, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10535, 'ANTON', 4, '05/13/1997 00:00:00', '06/10/1997 00:00:00', '05/21/1997 00:00:00', 1, 15, 'Antonio Moreno Taquer?a', 'Mataderos  2312', 'M?xico D.F.', NULL, '05023', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10536, 'LEHMS', 3, '05/14/1997 00:00:00', '06/11/1997 00:00:00', '06/06/1997 00:00:00', 2, 58, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10537, 'RICSU', 1, '05/14/1997 00:00:00', '05/28/1997 00:00:00', '05/19/1997 00:00:00', 1, 78, 'Richter Supermarkt', 'Starenweg 5', 'Gen?ve', NULL, '1204', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10538, 'BSBEV', 9, '05/15/1997 00:00:00', '06/12/1997 00:00:00', '05/16/1997 00:00:00', 3, 4, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10539, 'BSBEV', 6, '05/16/1997 00:00:00', '06/13/1997 00:00:00', '05/23/1997 00:00:00', 3, 12, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10540, 'QUICK', 3, '05/19/1997 00:00:00', '06/16/1997 00:00:00', '06/13/1997 00:00:00', 3, 1007, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10541, 'HANAR', 2, '05/19/1997 00:00:00', '06/16/1997 00:00:00', '05/29/1997 00:00:00', 1, 68, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10542, 'KOENE', 1, '05/20/1997 00:00:00', '06/17/1997 00:00:00', '05/26/1997 00:00:00', 3, 10, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10543, 'LILAS', 8, '05/21/1997 00:00:00', '06/18/1997 00:00:00', '05/23/1997 00:00:00', 2, 48, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10544, 'LONEP', 4, '05/21/1997 00:00:00', '06/18/1997 00:00:00', '05/30/1997 00:00:00', 1, 24, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10545, 'LAZYK', 8, '05/22/1997 00:00:00', '06/19/1997 00:00:00', '06/26/1997 00:00:00', 2, 11, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10546, 'VICTE', 1, '05/23/1997 00:00:00', '06/20/1997 00:00:00', '05/27/1997 00:00:00', 3, 194, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10547, 'SEVES', 3, '05/23/1997 00:00:00', '06/20/1997 00:00:00', '06/02/1997 00:00:00', 2, 178, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10548, 'TOMSP', 3, '05/26/1997 00:00:00', '06/23/1997 00:00:00', '06/02/1997 00:00:00', 2, 1, 'Toms Spezialit?ten', 'Luisenstr. 48', 'M?nster', NULL, '44087', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10549, 'QUICK', 5, '05/27/1997 00:00:00', '06/10/1997 00:00:00', '05/30/1997 00:00:00', 1, 171, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10550, 'GODOS', 7, '05/28/1997 00:00:00', '06/25/1997 00:00:00', '06/06/1997 00:00:00', 3, 4, 'Godos Cocina T?pica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10551, 'FURIB', 4, '05/28/1997 00:00:00', '07/09/1997 00:00:00', '06/06/1997 00:00:00', 3, 72, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10552, 'HILAA', 2, '05/29/1997 00:00:00', '06/26/1997 00:00:00', '06/05/1997 00:00:00', 1, 83, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10553, 'WARTH', 2, '05/30/1997 00:00:00', '06/27/1997 00:00:00', '06/03/1997 00:00:00', 2, 149, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10554, 'OTTIK', 4, '05/30/1997 00:00:00', '06/27/1997 00:00:00', '06/05/1997 00:00:00', 3, 120, 'Ottilies K?seladen', 'Mehrheimerstr. 369', 'K?ln', NULL, '50739', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10555, 'SAVEA', 6, '06/02/1997 00:00:00', '06/30/1997 00:00:00', '06/04/1997 00:00:00', 3, 252, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10556, 'SIMOB', 2, '06/03/1997 00:00:00', '07/15/1997 00:00:00', '06/13/1997 00:00:00', 1, 9, 'Simons bistro', 'Vinb?ltet 34', 'Kobenhavn', NULL, '1734', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10557, 'LEHMS', 9, '06/03/1997 00:00:00', '06/17/1997 00:00:00', '06/06/1997 00:00:00', 2, 96, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10558, 'AROUT', 1, '06/04/1997 00:00:00', '07/02/1997 00:00:00', '06/10/1997 00:00:00', 2, 72, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10559, 'BLONP', 6, '06/05/1997 00:00:00', '07/03/1997 00:00:00', '06/13/1997 00:00:00', 1, 8, 'Blondel p?re et fils', '24, place Kl?ber', 'Strasbourg', NULL, '67000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10560, 'FRANK', 8, '06/06/1997 00:00:00', '07/04/1997 00:00:00', '06/09/1997 00:00:00', 1, 36, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10561, 'FOLKO', 2, '06/06/1997 00:00:00', '07/04/1997 00:00:00', '06/09/1997 00:00:00', 2, 242, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10562, 'REGGC', 1, '06/09/1997 00:00:00', '07/07/1997 00:00:00', '06/12/1997 00:00:00', 1, 22, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10563, 'RICAR', 2, '06/10/1997 00:00:00', '07/22/1997 00:00:00', '06/24/1997 00:00:00', 2, 60, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10564, 'RATTC', 4, '06/10/1997 00:00:00', '07/08/1997 00:00:00', '06/16/1997 00:00:00', 3, 13, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10565, 'MEREP', 8, '06/11/1997 00:00:00', '07/09/1997 00:00:00', '06/18/1997 00:00:00', 2, 7, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10566, 'BLONP', 9, '06/12/1997 00:00:00', '07/10/1997 00:00:00', '06/18/1997 00:00:00', 1, 88, 'Blondel p?re et fils', '24, place Kl?ber', 'Strasbourg', NULL, '67000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10567, 'HUNGO', 1, '06/12/1997 00:00:00', '07/10/1997 00:00:00', '06/17/1997 00:00:00', 1, 33, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10568, 'GALED', 3, '06/13/1997 00:00:00', '07/11/1997 00:00:00', '07/09/1997 00:00:00', 3, 6, 'Galer?a del gastron?mo', 'Rambla de Catalu?a, 23', 'Barcelona', NULL, '8022', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10569, 'RATTC', 5, '06/16/1997 00:00:00', '07/14/1997 00:00:00', '07/11/1997 00:00:00', 1, 58, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10570, 'MEREP', 3, '06/17/1997 00:00:00', '07/15/1997 00:00:00', '06/19/1997 00:00:00', 3, 188, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10571, 'ERNSH', 8, '06/17/1997 00:00:00', '07/29/1997 00:00:00', '07/04/1997 00:00:00', 3, 26, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10572, 'BERGS', 3, '06/18/1997 00:00:00', '07/16/1997 00:00:00', '06/25/1997 00:00:00', 2, 116, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10573, 'ANTON', 7, '06/19/1997 00:00:00', '07/17/1997 00:00:00', '06/20/1997 00:00:00', 3, 84, 'Antonio Moreno Taquer?a', 'Mataderos  2312', 'M?xico D.F.', NULL, '05023', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10574, 'TRAIH', 4, '06/19/1997 00:00:00', '07/17/1997 00:00:00', '06/30/1997 00:00:00', 2, 37, 'Trail''s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10575, 'MORGK', 5, '06/20/1997 00:00:00', '07/04/1997 00:00:00', '06/30/1997 00:00:00', 1, 127, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10576, 'TORTU', 3, '06/23/1997 00:00:00', '07/07/1997 00:00:00', '06/30/1997 00:00:00', 3, 18, 'Tortuga Restaurante', 'Avda. Azteca 123', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10577, 'TRAIH', 9, '06/23/1997 00:00:00', '08/04/1997 00:00:00', '06/30/1997 00:00:00', 2, 25, 'Trail''s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10578, 'BSBEV', 4, '06/24/1997 00:00:00', '07/22/1997 00:00:00', '07/25/1997 00:00:00', 3, 29, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10579, 'LETSS', 1, '06/25/1997 00:00:00', '07/23/1997 00:00:00', '07/04/1997 00:00:00', 2, 13, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10580, 'OTTIK', 4, '06/26/1997 00:00:00', '07/24/1997 00:00:00', '07/01/1997 00:00:00', 3, 75, 'Ottilies K?seladen', 'Mehrheimerstr. 369', 'K?ln', NULL, '50739', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10581, 'FAMIA', 3, '06/26/1997 00:00:00', '07/24/1997 00:00:00', '07/02/1997 00:00:00', 1, 3, 'Familia Arquibaldo', 'Rua Or?s, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10582, 'BLAUS', 3, '06/27/1997 00:00:00', '07/25/1997 00:00:00', '07/14/1997 00:00:00', 2, 27, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10583, 'WARTH', 2, '06/30/1997 00:00:00', '07/28/1997 00:00:00', '07/04/1997 00:00:00', 2, 7, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10584, 'BLONP', 4, '06/30/1997 00:00:00', '07/28/1997 00:00:00', '07/04/1997 00:00:00', 1, 59, 'Blondel p?re et fils', '24, place Kl?ber', 'Strasbourg', NULL, '67000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10585, 'WELLI', 7, '07/01/1997 00:00:00', '07/29/1997 00:00:00', '07/10/1997 00:00:00', 1, 13, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10586, 'REGGC', 9, '07/02/1997 00:00:00', '07/30/1997 00:00:00', '07/09/1997 00:00:00', 1, 0, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10587, 'QUEDE', 1, '07/02/1997 00:00:00', '07/30/1997 00:00:00', '07/09/1997 00:00:00', 1, 62, 'Que Del?cia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10588, 'QUICK', 2, '07/03/1997 00:00:00', '07/31/1997 00:00:00', '07/10/1997 00:00:00', 3, 194, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10589, 'GREAL', 8, '07/04/1997 00:00:00', '08/01/1997 00:00:00', '07/14/1997 00:00:00', 2, 4, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10590, 'MEREP', 4, '07/07/1997 00:00:00', '08/04/1997 00:00:00', '07/14/1997 00:00:00', 3, 44, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10591, 'VAFFE', 1, '07/07/1997 00:00:00', '07/21/1997 00:00:00', '07/16/1997 00:00:00', 1, 55, 'Vaffeljernet', 'Smagsloget 45', '?rhus', NULL, '8200', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10592, 'LEHMS', 3, '07/08/1997 00:00:00', '08/05/1997 00:00:00', '07/16/1997 00:00:00', 1, 32, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10593, 'LEHMS', 7, '07/09/1997 00:00:00', '08/06/1997 00:00:00', '08/13/1997 00:00:00', 2, 174, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10594, 'OLDWO', 3, '07/09/1997 00:00:00', '08/06/1997 00:00:00', '07/16/1997 00:00:00', 2, 5, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10595, 'ERNSH', 2, '07/10/1997 00:00:00', '08/07/1997 00:00:00', '07/14/1997 00:00:00', 1, 96, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10596, 'WHITC', 8, '07/11/1997 00:00:00', '08/08/1997 00:00:00', '08/12/1997 00:00:00', 1, 16, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10597, 'PICCO', 7, '07/11/1997 00:00:00', '08/08/1997 00:00:00', '07/18/1997 00:00:00', 3, 35, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10598, 'RATTC', 1, '07/14/1997 00:00:00', '08/11/1997 00:00:00', '07/18/1997 00:00:00', 3, 44, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10599, 'BSBEV', 6, '07/15/1997 00:00:00', '08/26/1997 00:00:00', '07/21/1997 00:00:00', 3, 29, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10600, 'HUNGC', 4, '07/16/1997 00:00:00', '08/13/1997 00:00:00', '07/21/1997 00:00:00', 1, 45, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10601, 'HILAA', 7, '07/16/1997 00:00:00', '08/27/1997 00:00:00', '07/22/1997 00:00:00', 1, 58, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10602, 'VAFFE', 8, '07/17/1997 00:00:00', '08/14/1997 00:00:00', '07/22/1997 00:00:00', 2, 2, 'Vaffeljernet', 'Smagsloget 45', '?rhus', NULL, '8200', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10603, 'SAVEA', 8, '07/18/1997 00:00:00', '08/15/1997 00:00:00', '08/08/1997 00:00:00', 2, 48, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10604, 'FURIB', 1, '07/18/1997 00:00:00', '08/15/1997 00:00:00', '07/29/1997 00:00:00', 1, 7, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10605, 'MEREP', 1, '07/21/1997 00:00:00', '08/18/1997 00:00:00', '07/29/1997 00:00:00', 2, 379, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10606, 'TRADH', 4, '07/22/1997 00:00:00', '08/19/1997 00:00:00', '07/31/1997 00:00:00', 3, 79, 'Tradi?ao Hipermercados', 'Av. In?s de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10607, 'SAVEA', 5, '07/22/1997 00:00:00', '08/19/1997 00:00:00', '07/25/1997 00:00:00', 1, 200, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10608, 'TOMSP', 4, '07/23/1997 00:00:00', '08/20/1997 00:00:00', '08/01/1997 00:00:00', 2, 27, 'Toms Spezialit?ten', 'Luisenstr. 48', 'M?nster', NULL, '44087', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10609, 'DUMON', 7, '07/24/1997 00:00:00', '08/21/1997 00:00:00', '07/30/1997 00:00:00', 2, 1, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10610, 'LAMAI', 8, '07/25/1997 00:00:00', '08/22/1997 00:00:00', '08/06/1997 00:00:00', 1, 26, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10611, 'WOLZA', 6, '07/25/1997 00:00:00', '08/22/1997 00:00:00', '08/01/1997 00:00:00', 2, 80, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10612, 'SAVEA', 1, '07/28/1997 00:00:00', '08/25/1997 00:00:00', '08/01/1997 00:00:00', 2, 544, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10613, 'HILAA', 4, '07/29/1997 00:00:00', '08/26/1997 00:00:00', '08/01/1997 00:00:00', 2, 8, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10614, 'BLAUS', 8, '07/29/1997 00:00:00', '08/26/1997 00:00:00', '08/01/1997 00:00:00', 3, 1, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10615, 'WILMK', 2, '07/30/1997 00:00:00', '08/27/1997 00:00:00', '08/06/1997 00:00:00', 3, 0, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10616, 'GREAL', 1, '07/31/1997 00:00:00', '08/28/1997 00:00:00', '08/05/1997 00:00:00', 2, 116, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10617, 'GREAL', 4, '07/31/1997 00:00:00', '08/28/1997 00:00:00', '08/04/1997 00:00:00', 2, 18, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10618, 'MEREP', 1, '08/01/1997 00:00:00', '09/12/1997 00:00:00', '08/08/1997 00:00:00', 1, 154, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10619, 'MEREP', 3, '08/04/1997 00:00:00', '09/01/1997 00:00:00', '08/07/1997 00:00:00', 3, 91, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10620, 'LAUGB', 2, '08/05/1997 00:00:00', '09/02/1997 00:00:00', '08/14/1997 00:00:00', 3, 0, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10621, 'ISLAT', 4, '08/05/1997 00:00:00', '09/02/1997 00:00:00', '08/11/1997 00:00:00', 2, 23, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10622, 'RICAR', 4, '08/06/1997 00:00:00', '09/03/1997 00:00:00', '08/11/1997 00:00:00', 3, 50, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10623, 'FRANK', 8, '08/07/1997 00:00:00', '09/04/1997 00:00:00', '08/12/1997 00:00:00', 2, 97, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10624, 'THECR', 4, '08/07/1997 00:00:00', '09/04/1997 00:00:00', '08/19/1997 00:00:00', 2, 94, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10625, 'ANATR', 3, '08/08/1997 00:00:00', '09/05/1997 00:00:00', '08/14/1997 00:00:00', 1, 43, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constituci?n 2222', 'M?xico D.F.', NULL, '05021', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10626, 'BERGS', 1, '08/11/1997 00:00:00', '09/08/1997 00:00:00', '08/20/1997 00:00:00', 2, 138, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10627, 'SAVEA', 8, '08/11/1997 00:00:00', '09/22/1997 00:00:00', '08/21/1997 00:00:00', 3, 107, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10628, 'BLONP', 4, '08/12/1997 00:00:00', '09/09/1997 00:00:00', '08/20/1997 00:00:00', 3, 30, 'Blondel p?re et fils', '24, place Kl?ber', 'Strasbourg', NULL, '67000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10629, 'GODOS', 4, '08/12/1997 00:00:00', '09/09/1997 00:00:00', '08/20/1997 00:00:00', 3, 85, 'Godos Cocina T?pica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10630, 'KOENE', 1, '08/13/1997 00:00:00', '09/10/1997 00:00:00', '08/19/1997 00:00:00', 2, 32, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10631, 'LAMAI', 8, '08/14/1997 00:00:00', '09/11/1997 00:00:00', '08/15/1997 00:00:00', 1, 0, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10632, 'WANDK', 8, '08/14/1997 00:00:00', '09/11/1997 00:00:00', '08/19/1997 00:00:00', 1, 41, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10633, 'ERNSH', 7, '08/15/1997 00:00:00', '09/12/1997 00:00:00', '08/18/1997 00:00:00', 3, 477, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10634, 'FOLIG', 4, '08/15/1997 00:00:00', '09/12/1997 00:00:00', '08/21/1997 00:00:00', 3, 487, 'Folies gourmandes', '184, chauss?e de Tournai', 'Lille', NULL, '59000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10635, 'MAGAA', 8, '08/18/1997 00:00:00', '09/15/1997 00:00:00', '08/21/1997 00:00:00', 3, 47, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10636, 'WARTH', 4, '08/19/1997 00:00:00', '09/16/1997 00:00:00', '08/26/1997 00:00:00', 1, 1, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10637, 'QUEEN', 6, '08/19/1997 00:00:00', '09/16/1997 00:00:00', '08/26/1997 00:00:00', 1, 201, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10638, 'LINOD', 3, '08/20/1997 00:00:00', '09/17/1997 00:00:00', '09/01/1997 00:00:00', 1, 158, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10639, 'SANTG', 7, '08/20/1997 00:00:00', '09/17/1997 00:00:00', '08/27/1997 00:00:00', 3, 38, 'Sant? Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10640, 'WANDK', 4, '08/21/1997 00:00:00', '09/18/1997 00:00:00', '08/28/1997 00:00:00', 1, 23, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10641, 'HILAA', 4, '08/22/1997 00:00:00', '09/19/1997 00:00:00', '08/26/1997 00:00:00', 2, 179, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10642, 'SIMOB', 7, '08/22/1997 00:00:00', '09/19/1997 00:00:00', '09/05/1997 00:00:00', 3, 41, 'Simons bistro', 'Vinb?ltet 34', 'Kobenhavn', NULL, '1734', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10643, 'ALFKI', 6, '08/25/1997 00:00:00', '09/22/1997 00:00:00', '09/02/1997 00:00:00', 1, 29, 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10644, 'WELLI', 3, '08/25/1997 00:00:00', '09/22/1997 00:00:00', '09/01/1997 00:00:00', 2, 0, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10645, 'HANAR', 4, '08/26/1997 00:00:00', '09/23/1997 00:00:00', '09/02/1997 00:00:00', 1, 12, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10646, 'HUNGO', 9, '08/27/1997 00:00:00', '10/08/1997 00:00:00', '09/03/1997 00:00:00', 3, 142, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10647, 'QUEDE', 4, '08/27/1997 00:00:00', '09/10/1997 00:00:00', '09/03/1997 00:00:00', 2, 45, 'Que Del?cia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10648, 'RICAR', 5, '08/28/1997 00:00:00', '10/09/1997 00:00:00', '09/09/1997 00:00:00', 2, 14, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10649, 'MAISD', 5, '08/28/1997 00:00:00', '09/25/1997 00:00:00', '08/29/1997 00:00:00', 3, 6, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10650, 'FAMIA', 5, '08/29/1997 00:00:00', '09/26/1997 00:00:00', '09/03/1997 00:00:00', 3, 176, 'Familia Arquibaldo', 'Rua Or?s, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10651, 'WANDK', 8, '09/01/1997 00:00:00', '09/29/1997 00:00:00', '09/11/1997 00:00:00', 2, 20, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10652, 'GOURL', 4, '09/01/1997 00:00:00', '09/29/1997 00:00:00', '09/08/1997 00:00:00', 2, 7, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10653, 'FRANK', 1, '09/02/1997 00:00:00', '09/30/1997 00:00:00', '09/19/1997 00:00:00', 1, 93, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10654, 'BERGS', 5, '09/02/1997 00:00:00', '09/30/1997 00:00:00', '09/11/1997 00:00:00', 1, 55, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10655, 'REGGC', 1, '09/03/1997 00:00:00', '10/01/1997 00:00:00', '09/11/1997 00:00:00', 2, 4, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10656, 'GREAL', 6, '09/04/1997 00:00:00', '10/02/1997 00:00:00', '09/10/1997 00:00:00', 1, 57, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10657, 'SAVEA', 2, '09/04/1997 00:00:00', '10/02/1997 00:00:00', '09/15/1997 00:00:00', 2, 352, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10658, 'QUICK', 4, '09/05/1997 00:00:00', '10/03/1997 00:00:00', '09/08/1997 00:00:00', 1, 364, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10659, 'QUEEN', 7, '09/05/1997 00:00:00', '10/03/1997 00:00:00', '09/10/1997 00:00:00', 2, 105, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10660, 'HUNGC', 8, '09/08/1997 00:00:00', '10/06/1997 00:00:00', '10/15/1997 00:00:00', 1, 111, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10661, 'HUNGO', 7, '09/09/1997 00:00:00', '10/07/1997 00:00:00', '09/15/1997 00:00:00', 3, 17, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10662, 'LONEP', 3, '09/09/1997 00:00:00', '10/07/1997 00:00:00', '09/18/1997 00:00:00', 2, 1, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10663, 'BONAP', 2, '09/10/1997 00:00:00', '09/24/1997 00:00:00', '10/03/1997 00:00:00', 2, 113, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10664, 'FURIB', 1, '09/10/1997 00:00:00', '10/08/1997 00:00:00', '09/19/1997 00:00:00', 3, 1, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10665, 'LONEP', 1, '09/11/1997 00:00:00', '10/09/1997 00:00:00', '09/17/1997 00:00:00', 2, 26, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10666, 'RICSU', 7, '09/12/1997 00:00:00', '10/10/1997 00:00:00', '09/22/1997 00:00:00', 2, 232, 'Richter Supermarkt', 'Starenweg 5', 'Gen?ve', NULL, '1204', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10667, 'ERNSH', 7, '09/12/1997 00:00:00', '10/10/1997 00:00:00', '09/19/1997 00:00:00', 1, 78, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10668, 'WANDK', 1, '09/15/1997 00:00:00', '10/13/1997 00:00:00', '09/23/1997 00:00:00', 2, 47, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10669, 'SIMOB', 2, '09/15/1997 00:00:00', '10/13/1997 00:00:00', '09/22/1997 00:00:00', 1, 24, 'Simons bistro', 'Vinb?ltet 34', 'Kobenhavn', NULL, '1734', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10670, 'FRANK', 4, '09/16/1997 00:00:00', '10/14/1997 00:00:00', '09/18/1997 00:00:00', 1, 203, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10671, 'FRANR', 1, '09/17/1997 00:00:00', '10/15/1997 00:00:00', '09/24/1997 00:00:00', 1, 30, 'France restauration', '54, rue Royale', 'Nantes', NULL, '44000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10672, 'BERGS', 9, '09/17/1997 00:00:00', '10/01/1997 00:00:00', '09/26/1997 00:00:00', 2, 95, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10673, 'WILMK', 2, '09/18/1997 00:00:00', '10/16/1997 00:00:00', '09/19/1997 00:00:00', 1, 22, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10674, 'ISLAT', 4, '09/18/1997 00:00:00', '10/16/1997 00:00:00', '09/30/1997 00:00:00', 2, 0, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10675, 'FRANK', 5, '09/19/1997 00:00:00', '10/17/1997 00:00:00', '09/23/1997 00:00:00', 2, 31, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10676, 'TORTU', 2, '09/22/1997 00:00:00', '10/20/1997 00:00:00', '09/29/1997 00:00:00', 2, 2, 'Tortuga Restaurante', 'Avda. Azteca 123', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10677, 'ANTON', 1, '09/22/1997 00:00:00', '10/20/1997 00:00:00', '09/26/1997 00:00:00', 3, 4, 'Antonio Moreno Taquer?a', 'Mataderos  2312', 'M?xico D.F.', NULL, '05023', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10678, 'SAVEA', 7, '09/23/1997 00:00:00', '10/21/1997 00:00:00', '10/16/1997 00:00:00', 3, 388, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10679, 'BLONP', 8, '09/23/1997 00:00:00', '10/21/1997 00:00:00', '09/30/1997 00:00:00', 3, 27, 'Blondel p?re et fils', '24, place Kl?ber', 'Strasbourg', NULL, '67000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10680, 'OLDWO', 1, '09/24/1997 00:00:00', '10/22/1997 00:00:00', '09/26/1997 00:00:00', 1, 26, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10681, 'GREAL', 3, '09/25/1997 00:00:00', '10/23/1997 00:00:00', '09/30/1997 00:00:00', 3, 76, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10682, 'ANTON', 3, '09/25/1997 00:00:00', '10/23/1997 00:00:00', '10/01/1997 00:00:00', 2, 36, 'Antonio Moreno Taquer?a', 'Mataderos  2312', 'M?xico D.F.', NULL, '05023', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10683, 'DUMON', 2, '09/26/1997 00:00:00', '10/24/1997 00:00:00', '10/01/1997 00:00:00', 1, 4, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10684, 'OTTIK', 3, '09/26/1997 00:00:00', '10/24/1997 00:00:00', '09/30/1997 00:00:00', 1, 145, 'Ottilies K?seladen', 'Mehrheimerstr. 369', 'K?ln', NULL, '50739', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10685, 'GOURL', 4, '09/29/1997 00:00:00', '10/13/1997 00:00:00', '10/03/1997 00:00:00', 2, 33, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10686, 'PICCO', 2, '09/30/1997 00:00:00', '10/28/1997 00:00:00', '10/08/1997 00:00:00', 1, 96, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10687, 'HUNGO', 9, '09/30/1997 00:00:00', '10/28/1997 00:00:00', '10/30/1997 00:00:00', 2, 296, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10688, 'VAFFE', 4, '10/01/1997 00:00:00', '10/15/1997 00:00:00', '10/07/1997 00:00:00', 2, 299, 'Vaffeljernet', 'Smagsloget 45', '?rhus', NULL, '8200', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10689, 'BERGS', 1, '10/01/1997 00:00:00', '10/29/1997 00:00:00', '10/07/1997 00:00:00', 2, 13, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10690, 'HANAR', 1, '10/02/1997 00:00:00', '10/30/1997 00:00:00', '10/03/1997 00:00:00', 1, 15, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10691, 'QUICK', 2, '10/03/1997 00:00:00', '11/14/1997 00:00:00', '10/22/1997 00:00:00', 2, 810, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10692, 'ALFKI', 4, '10/03/1997 00:00:00', '10/31/1997 00:00:00', '10/13/1997 00:00:00', 2, 61, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10693, 'WHITC', 3, '10/06/1997 00:00:00', '10/20/1997 00:00:00', '10/10/1997 00:00:00', 3, 139, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10694, 'QUICK', 8, '10/06/1997 00:00:00', '11/03/1997 00:00:00', '10/09/1997 00:00:00', 3, 398, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10695, 'WILMK', 7, '10/07/1997 00:00:00', '11/18/1997 00:00:00', '10/14/1997 00:00:00', 1, 16, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10696, 'WHITC', 8, '10/08/1997 00:00:00', '11/19/1997 00:00:00', '10/14/1997 00:00:00', 3, 102, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10697, 'LINOD', 3, '10/08/1997 00:00:00', '11/05/1997 00:00:00', '10/14/1997 00:00:00', 1, 45, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10698, 'ERNSH', 4, '10/09/1997 00:00:00', '11/06/1997 00:00:00', '10/17/1997 00:00:00', 1, 272, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10699, 'MORGK', 3, '10/09/1997 00:00:00', '11/06/1997 00:00:00', '10/13/1997 00:00:00', 3, 0, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10700, 'SAVEA', 3, '10/10/1997 00:00:00', '11/07/1997 00:00:00', '10/16/1997 00:00:00', 1, 65, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10701, 'HUNGO', 6, '10/13/1997 00:00:00', '10/27/1997 00:00:00', '10/15/1997 00:00:00', 3, 220, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10702, 'ALFKI', 4, '10/13/1997 00:00:00', '11/24/1997 00:00:00', '10/21/1997 00:00:00', 1, 23, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10703, 'FOLKO', 6, '10/14/1997 00:00:00', '11/11/1997 00:00:00', '10/20/1997 00:00:00', 2, 152, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10704, 'QUEEN', 6, '10/14/1997 00:00:00', '11/11/1997 00:00:00', '11/07/1997 00:00:00', 1, 4, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10705, 'HILAA', 9, '10/15/1997 00:00:00', '11/12/1997 00:00:00', '11/18/1997 00:00:00', 2, 3, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10706, 'OLDWO', 8, '10/16/1997 00:00:00', '11/13/1997 00:00:00', '10/21/1997 00:00:00', 3, 135, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10707, 'AROUT', 4, '10/16/1997 00:00:00', '10/30/1997 00:00:00', '10/23/1997 00:00:00', 3, 21, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10708, 'THEBI', 6, '10/17/1997 00:00:00', '11/28/1997 00:00:00', '11/05/1997 00:00:00', 2, 2, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10709, 'GOURL', 1, '10/17/1997 00:00:00', '11/14/1997 00:00:00', '11/20/1997 00:00:00', 3, 210, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10710, 'FRANS', 1, '10/20/1997 00:00:00', '11/17/1997 00:00:00', '10/23/1997 00:00:00', 1, 4, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10711, 'SAVEA', 5, '10/21/1997 00:00:00', '12/02/1997 00:00:00', '10/29/1997 00:00:00', 2, 52, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10712, 'HUNGO', 3, '10/21/1997 00:00:00', '11/18/1997 00:00:00', '10/31/1997 00:00:00', 1, 89, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10713, 'SAVEA', 1, '10/22/1997 00:00:00', '11/19/1997 00:00:00', '10/24/1997 00:00:00', 1, 167, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10714, 'SAVEA', 5, '10/22/1997 00:00:00', '11/19/1997 00:00:00', '10/27/1997 00:00:00', 3, 24, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10715, 'BONAP', 3, '10/23/1997 00:00:00', '11/06/1997 00:00:00', '10/29/1997 00:00:00', 1, 63, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10716, 'RANCH', 4, '10/24/1997 00:00:00', '11/21/1997 00:00:00', '10/27/1997 00:00:00', 2, 22, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10717, 'FRANK', 1, '10/24/1997 00:00:00', '11/21/1997 00:00:00', '10/29/1997 00:00:00', 2, 59, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10718, 'KOENE', 1, '10/27/1997 00:00:00', '11/24/1997 00:00:00', '10/29/1997 00:00:00', 3, 170, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10719, 'LETSS', 8, '10/27/1997 00:00:00', '11/24/1997 00:00:00', '11/05/1997 00:00:00', 2, 51, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10720, 'QUEDE', 8, '10/28/1997 00:00:00', '11/11/1997 00:00:00', '11/05/1997 00:00:00', 2, 9, 'Que Del?cia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10721, 'QUICK', 5, '10/29/1997 00:00:00', '11/26/1997 00:00:00', '10/31/1997 00:00:00', 3, 48, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10722, 'SAVEA', 8, '10/29/1997 00:00:00', '12/10/1997 00:00:00', '11/04/1997 00:00:00', 1, 74, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10723, 'WHITC', 3, '10/30/1997 00:00:00', '11/27/1997 00:00:00', '11/25/1997 00:00:00', 1, 21, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10724, 'MEREP', 8, '10/30/1997 00:00:00', '12/11/1997 00:00:00', '11/05/1997 00:00:00', 2, 57, 'M?re Paillarde', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10725, 'FAMIA', 4, '10/31/1997 00:00:00', '11/28/1997 00:00:00', '11/05/1997 00:00:00', 3, 10, 'Familia Arquibaldo', 'Rua Or?s, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10726, 'EASTC', 4, '11/03/1997 00:00:00', '11/17/1997 00:00:00', '12/05/1997 00:00:00', 1, 16, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10727, 'REGGC', 2, '11/03/1997 00:00:00', '12/01/1997 00:00:00', '12/05/1997 00:00:00', 1, 89, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10728, 'QUEEN', 4, '11/04/1997 00:00:00', '12/02/1997 00:00:00', '11/11/1997 00:00:00', 2, 58, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10729, 'LINOD', 8, '11/04/1997 00:00:00', '12/16/1997 00:00:00', '11/14/1997 00:00:00', 3, 141, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10730, 'BONAP', 5, '11/05/1997 00:00:00', '12/03/1997 00:00:00', '11/14/1997 00:00:00', 1, 20, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10731, 'CHOPS', 7, '11/06/1997 00:00:00', '12/04/1997 00:00:00', '11/14/1997 00:00:00', 1, 96, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10732, 'BONAP', 3, '11/06/1997 00:00:00', '12/04/1997 00:00:00', '11/07/1997 00:00:00', 1, 16, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10733, 'BERGS', 1, '11/07/1997 00:00:00', '12/05/1997 00:00:00', '11/10/1997 00:00:00', 3, 110, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10734, 'GOURL', 2, '11/07/1997 00:00:00', '12/05/1997 00:00:00', '11/12/1997 00:00:00', 3, 1, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10735, 'LETSS', 6, '11/10/1997 00:00:00', '12/08/1997 00:00:00', '11/21/1997 00:00:00', 2, 45, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10736, 'HUNGO', 9, '11/11/1997 00:00:00', '12/09/1997 00:00:00', '11/21/1997 00:00:00', 2, 44, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10737, 'VINET', 2, '11/11/1997 00:00:00', '12/09/1997 00:00:00', '11/18/1997 00:00:00', 2, 7, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10738, 'SPECD', 2, '11/12/1997 00:00:00', '12/10/1997 00:00:00', '11/18/1997 00:00:00', 1, 2, 'Sp?cialit?s du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10739, 'VINET', 3, '11/12/1997 00:00:00', '12/10/1997 00:00:00', '11/17/1997 00:00:00', 3, 11, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10740, 'WHITC', 4, '11/13/1997 00:00:00', '12/11/1997 00:00:00', '11/25/1997 00:00:00', 2, 81, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10741, 'AROUT', 4, '11/14/1997 00:00:00', '11/28/1997 00:00:00', '11/18/1997 00:00:00', 3, 10, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10742, 'BOTTM', 3, '11/14/1997 00:00:00', '12/12/1997 00:00:00', '11/18/1997 00:00:00', 3, 243, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10743, 'AROUT', 1, '11/17/1997 00:00:00', '12/15/1997 00:00:00', '11/21/1997 00:00:00', 2, 23, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10744, 'VAFFE', 6, '11/17/1997 00:00:00', '12/15/1997 00:00:00', '11/24/1997 00:00:00', 1, 69, 'Vaffeljernet', 'Smagsloget 45', '?rhus', NULL, '8200', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10745, 'QUICK', 9, '11/18/1997 00:00:00', '12/16/1997 00:00:00', '11/27/1997 00:00:00', 1, 3, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10746, 'CHOPS', 1, '11/19/1997 00:00:00', '12/17/1997 00:00:00', '11/21/1997 00:00:00', 3, 31, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10747, 'PICCO', 6, '11/19/1997 00:00:00', '12/17/1997 00:00:00', '11/26/1997 00:00:00', 1, 117, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10748, 'SAVEA', 3, '11/20/1997 00:00:00', '12/18/1997 00:00:00', '11/28/1997 00:00:00', 1, 232, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10749, 'ISLAT', 4, '11/20/1997 00:00:00', '12/18/1997 00:00:00', '12/19/1997 00:00:00', 2, 61, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10750, 'WARTH', 9, '11/21/1997 00:00:00', '12/19/1997 00:00:00', '11/24/1997 00:00:00', 1, 79, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10751, 'RICSU', 3, '11/24/1997 00:00:00', '12/22/1997 00:00:00', '12/03/1997 00:00:00', 3, 130, 'Richter Supermarkt', 'Starenweg 5', 'Gen?ve', NULL, '1204', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10752, 'NORTS', 2, '11/24/1997 00:00:00', '12/22/1997 00:00:00', '11/28/1997 00:00:00', 3, 1, 'North/South', 'South House 300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10753, 'FRANS', 3, '11/25/1997 00:00:00', '12/23/1997 00:00:00', '11/27/1997 00:00:00', 1, 7, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10754, 'MAGAA', 6, '11/25/1997 00:00:00', '12/23/1997 00:00:00', '11/27/1997 00:00:00', 3, 2, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10755, 'BONAP', 4, '11/26/1997 00:00:00', '12/24/1997 00:00:00', '11/28/1997 00:00:00', 2, 16, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10756, 'SPLIR', 8, '11/27/1997 00:00:00', '12/25/1997 00:00:00', '12/02/1997 00:00:00', 2, 73, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10757, 'SAVEA', 6, '11/27/1997 00:00:00', '12/25/1997 00:00:00', '12/15/1997 00:00:00', 1, 8, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10758, 'RICSU', 3, '11/28/1997 00:00:00', '12/26/1997 00:00:00', '12/04/1997 00:00:00', 3, 138, 'Richter Supermarkt', 'Starenweg 5', 'Gen?ve', NULL, '1204', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10759, 'ANATR', 3, '11/28/1997 00:00:00', '12/26/1997 00:00:00', '12/12/1997 00:00:00', 3, 11, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constituci?n 2222', 'M?xico D.F.', NULL, '05021', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10760, 'MAISD', 4, '12/01/1997 00:00:00', '12/29/1997 00:00:00', '12/10/1997 00:00:00', 1, 155, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10761, 'RATTC', 5, '12/02/1997 00:00:00', '12/30/1997 00:00:00', '12/08/1997 00:00:00', 2, 18, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10762, 'FOLKO', 3, '12/02/1997 00:00:00', '12/30/1997 00:00:00', '12/09/1997 00:00:00', 1, 328, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10763, 'FOLIG', 3, '12/03/1997 00:00:00', '12/31/1997 00:00:00', '12/08/1997 00:00:00', 3, 37, 'Folies gourmandes', '184, chauss?e de Tournai', 'Lille', NULL, '59000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10764, 'ERNSH', 6, '12/03/1997 00:00:00', '12/31/1997 00:00:00', '12/08/1997 00:00:00', 3, 145, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10765, 'QUICK', 3, '12/04/1997 00:00:00', '01/01/1998 00:00:00', '12/09/1997 00:00:00', 3, 42, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10766, 'OTTIK', 4, '12/05/1997 00:00:00', '01/02/1998 00:00:00', '12/09/1997 00:00:00', 1, 157, 'Ottilies K?seladen', 'Mehrheimerstr. 369', 'K?ln', NULL, '50739', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10767, 'SUPRD', 4, '12/05/1997 00:00:00', '01/02/1998 00:00:00', '12/15/1997 00:00:00', 3, 1, 'Supr?mes d?lices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10768, 'AROUT', 3, '12/08/1997 00:00:00', '01/05/1998 00:00:00', '12/15/1997 00:00:00', 2, 146, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10769, 'VAFFE', 3, '12/08/1997 00:00:00', '01/05/1998 00:00:00', '12/12/1997 00:00:00', 1, 65, 'Vaffeljernet', 'Smagsloget 45', '?rhus', NULL, '8200', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10770, 'HANAR', 8, '12/09/1997 00:00:00', '01/06/1998 00:00:00', '12/17/1997 00:00:00', 3, 5, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10771, 'ERNSH', 9, '12/10/1997 00:00:00', '01/07/1998 00:00:00', '01/02/1998 00:00:00', 2, 11, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10772, 'LEHMS', 3, '12/10/1997 00:00:00', '01/07/1998 00:00:00', '12/19/1997 00:00:00', 2, 91, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10773, 'ERNSH', 1, '12/11/1997 00:00:00', '01/08/1998 00:00:00', '12/16/1997 00:00:00', 3, 96, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10774, 'FOLKO', 4, '12/11/1997 00:00:00', '12/25/1997 00:00:00', '12/12/1997 00:00:00', 1, 48, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10775, 'THECR', 7, '12/12/1997 00:00:00', '01/09/1998 00:00:00', '12/26/1997 00:00:00', 1, 20, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10776, 'ERNSH', 1, '12/15/1997 00:00:00', '01/12/1998 00:00:00', '12/18/1997 00:00:00', 3, 351, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10777, 'GOURL', 7, '12/15/1997 00:00:00', '12/29/1997 00:00:00', '01/21/1998 00:00:00', 2, 3, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10778, 'BERGS', 3, '12/16/1997 00:00:00', '01/13/1998 00:00:00', '12/24/1997 00:00:00', 1, 6, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10779, 'MORGK', 3, '12/16/1997 00:00:00', '01/13/1998 00:00:00', '01/14/1998 00:00:00', 2, 58, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10780, 'LILAS', 2, '12/16/1997 00:00:00', '12/30/1997 00:00:00', '12/25/1997 00:00:00', 1, 42, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10781, 'WARTH', 2, '12/17/1997 00:00:00', '01/14/1998 00:00:00', '12/19/1997 00:00:00', 3, 73, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10782, 'CACTU', 9, '12/17/1997 00:00:00', '01/14/1998 00:00:00', '12/22/1997 00:00:00', 3, 1, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10783, 'HANAR', 4, '12/18/1997 00:00:00', '01/15/1998 00:00:00', '12/19/1997 00:00:00', 2, 124, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10784, 'MAGAA', 4, '12/18/1997 00:00:00', '01/15/1998 00:00:00', '12/22/1997 00:00:00', 3, 70, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10785, 'GROSR', 1, '12/18/1997 00:00:00', '01/15/1998 00:00:00', '12/24/1997 00:00:00', 3, 1, 'GROSELLA-Restaurante', '5? Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10786, 'QUEEN', 8, '12/19/1997 00:00:00', '01/16/1998 00:00:00', '12/23/1997 00:00:00', 1, 110, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10787, 'LAMAI', 2, '12/19/1997 00:00:00', '01/02/1998 00:00:00', '12/26/1997 00:00:00', 1, 249, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10788, 'QUICK', 1, '12/22/1997 00:00:00', '01/19/1998 00:00:00', '01/19/1998 00:00:00', 2, 42, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10789, 'FOLIG', 1, '12/22/1997 00:00:00', '01/19/1998 00:00:00', '12/31/1997 00:00:00', 2, 100, 'Folies gourmandes', '184, chauss?e de Tournai', 'Lille', NULL, '59000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10790, 'GOURL', 6, '12/22/1997 00:00:00', '01/19/1998 00:00:00', '12/26/1997 00:00:00', 1, 28, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10791, 'FRANK', 6, '12/23/1997 00:00:00', '01/20/1998 00:00:00', '01/01/1998 00:00:00', 2, 16, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10792, 'WOLZA', 1, '12/23/1997 00:00:00', '01/20/1998 00:00:00', '12/31/1997 00:00:00', 3, 23, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10793, 'AROUT', 3, '12/24/1997 00:00:00', '01/21/1998 00:00:00', '01/08/1998 00:00:00', 3, 4, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10794, 'QUEDE', 6, '12/24/1997 00:00:00', '01/21/1998 00:00:00', '01/02/1998 00:00:00', 1, 21, 'Que Del?cia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10795, 'ERNSH', 8, '12/24/1997 00:00:00', '01/21/1998 00:00:00', '01/20/1998 00:00:00', 2, 126, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10796, 'HILAA', 3, '12/25/1997 00:00:00', '01/22/1998 00:00:00', '01/14/1998 00:00:00', 1, 26, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10797, 'DRACD', 7, '12/25/1997 00:00:00', '01/22/1998 00:00:00', '01/05/1998 00:00:00', 2, 33, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10798, 'ISLAT', 2, '12/26/1997 00:00:00', '01/23/1998 00:00:00', '01/05/1998 00:00:00', 1, 2, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10799, 'KOENE', 9, '12/26/1997 00:00:00', '02/06/1998 00:00:00', '01/05/1998 00:00:00', 3, 30, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10800, 'SEVES', 1, '12/26/1997 00:00:00', '01/23/1998 00:00:00', '01/05/1998 00:00:00', 3, 137, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10801, 'BOLID', 4, '12/29/1997 00:00:00', '01/26/1998 00:00:00', '12/31/1997 00:00:00', 2, 97, 'B?lido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10802, 'SIMOB', 4, '12/29/1997 00:00:00', '01/26/1998 00:00:00', '01/02/1998 00:00:00', 2, 257, 'Simons bistro', 'Vinb?ltet 34', 'Kobenhavn', NULL, '1734', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10803, 'WELLI', 4, '12/30/1997 00:00:00', '01/27/1998 00:00:00', '01/06/1998 00:00:00', 1, 55, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10804, 'SEVES', 6, '12/30/1997 00:00:00', '01/27/1998 00:00:00', '01/07/1998 00:00:00', 2, 27, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10805, 'THEBI', 2, '12/30/1997 00:00:00', '01/27/1998 00:00:00', '01/09/1998 00:00:00', 3, 237, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10806, 'VICTE', 3, '12/31/1997 00:00:00', '01/28/1998 00:00:00', '01/05/1998 00:00:00', 2, 22, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10807, 'FRANS', 4, '12/31/1997 00:00:00', '01/28/1998 00:00:00', '01/30/1998 00:00:00', 1, 1, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10808, 'OLDWO', 2, '01/01/1998 00:00:00', '01/29/1998 00:00:00', '01/09/1998 00:00:00', 3, 45, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10809, 'WELLI', 7, '01/01/1998 00:00:00', '01/29/1998 00:00:00', '01/07/1998 00:00:00', 1, 4, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10810, 'LAUGB', 2, '01/01/1998 00:00:00', '01/29/1998 00:00:00', '01/07/1998 00:00:00', 3, 4, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10811, 'LINOD', 8, '01/02/1998 00:00:00', '01/30/1998 00:00:00', '01/08/1998 00:00:00', 1, 31, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10812, 'REGGC', 5, '01/02/1998 00:00:00', '01/30/1998 00:00:00', '01/12/1998 00:00:00', 1, 59, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10813, 'RICAR', 1, '01/05/1998 00:00:00', '02/02/1998 00:00:00', '01/09/1998 00:00:00', 1, 47, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10814, 'VICTE', 3, '01/05/1998 00:00:00', '02/02/1998 00:00:00', '01/14/1998 00:00:00', 3, 130, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10815, 'SAVEA', 2, '01/05/1998 00:00:00', '02/02/1998 00:00:00', '01/14/1998 00:00:00', 3, 14, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10816, 'GREAL', 4, '01/06/1998 00:00:00', '02/03/1998 00:00:00', '02/04/1998 00:00:00', 2, 719, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10817, 'KOENE', 3, '01/06/1998 00:00:00', '01/20/1998 00:00:00', '01/13/1998 00:00:00', 2, 306, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10818, 'MAGAA', 7, '01/07/1998 00:00:00', '02/04/1998 00:00:00', '01/12/1998 00:00:00', 3, 65, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10819, 'CACTU', 2, '01/07/1998 00:00:00', '02/04/1998 00:00:00', '01/16/1998 00:00:00', 3, 19, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10820, 'RATTC', 3, '01/07/1998 00:00:00', '02/04/1998 00:00:00', '01/13/1998 00:00:00', 2, 37, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10821, 'SPLIR', 1, '01/08/1998 00:00:00', '02/05/1998 00:00:00', '01/15/1998 00:00:00', 1, 36, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10822, 'TRAIH', 6, '01/08/1998 00:00:00', '02/05/1998 00:00:00', '01/16/1998 00:00:00', 3, 7, 'Trail''s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10823, 'LILAS', 5, '01/09/1998 00:00:00', '02/06/1998 00:00:00', '01/13/1998 00:00:00', 2, 163, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10824, 'FOLKO', 8, '01/09/1998 00:00:00', '02/06/1998 00:00:00', '01/30/1998 00:00:00', 1, 1, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10825, 'DRACD', 1, '01/09/1998 00:00:00', '02/06/1998 00:00:00', '01/14/1998 00:00:00', 1, 79, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10826, 'BLONP', 6, '01/12/1998 00:00:00', '02/09/1998 00:00:00', '02/06/1998 00:00:00', 1, 7, 'Blondel p?re et fils', '24, place Kl?ber', 'Strasbourg', NULL, '67000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10827, 'BONAP', 1, '01/12/1998 00:00:00', '01/26/1998 00:00:00', '02/06/1998 00:00:00', 2, 63, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10828, 'RANCH', 9, '01/13/1998 00:00:00', '01/27/1998 00:00:00', '02/04/1998 00:00:00', 1, 90, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10829, 'ISLAT', 9, '01/13/1998 00:00:00', '02/10/1998 00:00:00', '01/23/1998 00:00:00', 1, 154, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10830, 'TRADH', 4, '01/13/1998 00:00:00', '02/24/1998 00:00:00', '01/21/1998 00:00:00', 2, 81, 'Tradi?ao Hipermercados', 'Av. In?s de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10831, 'SANTG', 3, '01/14/1998 00:00:00', '02/11/1998 00:00:00', '01/23/1998 00:00:00', 2, 72, 'Sant? Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10832, 'LAMAI', 2, '01/14/1998 00:00:00', '02/11/1998 00:00:00', '01/19/1998 00:00:00', 2, 43, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10833, 'OTTIK', 6, '01/15/1998 00:00:00', '02/12/1998 00:00:00', '01/23/1998 00:00:00', 2, 71, 'Ottilies K?seladen', 'Mehrheimerstr. 369', 'K?ln', NULL, '50739', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10834, 'TRADH', 1, '01/15/1998 00:00:00', '02/12/1998 00:00:00', '01/19/1998 00:00:00', 3, 29, 'Tradi?ao Hipermercados', 'Av. In?s de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10835, 'ALFKI', 1, '01/15/1998 00:00:00', '02/12/1998 00:00:00', '01/21/1998 00:00:00', 3, 69, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10836, 'ERNSH', 7, '01/16/1998 00:00:00', '02/13/1998 00:00:00', '01/21/1998 00:00:00', 1, 411, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10837, 'BERGS', 9, '01/16/1998 00:00:00', '02/13/1998 00:00:00', '01/23/1998 00:00:00', 3, 13, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10838, 'LINOD', 3, '01/19/1998 00:00:00', '02/16/1998 00:00:00', '01/23/1998 00:00:00', 3, 59, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10839, 'TRADH', 3, '01/19/1998 00:00:00', '02/16/1998 00:00:00', '01/22/1998 00:00:00', 3, 35, 'Tradi?ao Hipermercados', 'Av. In?s de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10840, 'LINOD', 4, '01/19/1998 00:00:00', '03/02/1998 00:00:00', '02/16/1998 00:00:00', 2, 2, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10841, 'SUPRD', 5, '01/20/1998 00:00:00', '02/17/1998 00:00:00', '01/29/1998 00:00:00', 2, 424, 'Supr?mes d?lices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10842, 'TORTU', 1, '01/20/1998 00:00:00', '02/17/1998 00:00:00', '01/29/1998 00:00:00', 3, 54, 'Tortuga Restaurante', 'Avda. Azteca 123', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10843, 'VICTE', 4, '01/21/1998 00:00:00', '02/18/1998 00:00:00', '01/26/1998 00:00:00', 2, 9, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10844, 'PICCO', 8, '01/21/1998 00:00:00', '02/18/1998 00:00:00', '01/26/1998 00:00:00', 2, 25, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10845, 'QUICK', 8, '01/21/1998 00:00:00', '02/04/1998 00:00:00', '01/30/1998 00:00:00', 1, 212, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10846, 'SUPRD', 2, '01/22/1998 00:00:00', '03/05/1998 00:00:00', '01/23/1998 00:00:00', 3, 56, 'Supr?mes d?lices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10847, 'SAVEA', 4, '01/22/1998 00:00:00', '02/05/1998 00:00:00', '02/10/1998 00:00:00', 3, 487, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10848, 'CONSH', 7, '01/23/1998 00:00:00', '02/20/1998 00:00:00', '01/29/1998 00:00:00', 2, 38, 'Consolidated Holdings', 'Berkeley Gardens 12  Brewery', 'London', NULL, 'WX1 6LT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10849, 'KOENE', 9, '01/23/1998 00:00:00', '02/20/1998 00:00:00', '01/30/1998 00:00:00', 2, 0, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10850, 'VICTE', 1, '01/23/1998 00:00:00', '03/06/1998 00:00:00', '01/30/1998 00:00:00', 1, 49, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10851, 'RICAR', 5, '01/26/1998 00:00:00', '02/23/1998 00:00:00', '02/02/1998 00:00:00', 1, 160, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10852, 'RATTC', 8, '01/26/1998 00:00:00', '02/09/1998 00:00:00', '01/30/1998 00:00:00', 1, 174, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10853, 'BLAUS', 9, '01/27/1998 00:00:00', '02/24/1998 00:00:00', '02/03/1998 00:00:00', 2, 53, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10854, 'ERNSH', 3, '01/27/1998 00:00:00', '02/24/1998 00:00:00', '02/05/1998 00:00:00', 2, 100, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10855, 'OLDWO', 3, '01/27/1998 00:00:00', '02/24/1998 00:00:00', '02/04/1998 00:00:00', 1, 170, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10856, 'ANTON', 3, '01/28/1998 00:00:00', '02/25/1998 00:00:00', '02/10/1998 00:00:00', 2, 58, 'Antonio Moreno Taquer?a', 'Mataderos  2312', 'M?xico D.F.', NULL, '05023', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10857, 'BERGS', 8, '01/28/1998 00:00:00', '02/25/1998 00:00:00', '02/06/1998 00:00:00', 2, 188, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10858, 'LACOR', 2, '01/29/1998 00:00:00', '02/26/1998 00:00:00', '02/03/1998 00:00:00', 1, 52, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', NULL, '78000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10859, 'FRANK', 1, '01/29/1998 00:00:00', '02/26/1998 00:00:00', '02/02/1998 00:00:00', 2, 76, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10860, 'FRANR', 3, '01/29/1998 00:00:00', '02/26/1998 00:00:00', '02/04/1998 00:00:00', 3, 19, 'France restauration', '54, rue Royale', 'Nantes', NULL, '44000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10861, 'WHITC', 4, '01/30/1998 00:00:00', '02/27/1998 00:00:00', '02/17/1998 00:00:00', 2, 14, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10862, 'LEHMS', 8, '01/30/1998 00:00:00', '03/13/1998 00:00:00', '02/02/1998 00:00:00', 2, 53, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10863, 'HILAA', 4, '02/02/1998 00:00:00', '03/02/1998 00:00:00', '02/17/1998 00:00:00', 2, 30, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10864, 'AROUT', 4, '02/02/1998 00:00:00', '03/02/1998 00:00:00', '02/09/1998 00:00:00', 2, 3, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10865, 'QUICK', 2, '02/02/1998 00:00:00', '02/16/1998 00:00:00', '02/12/1998 00:00:00', 1, 348, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10866, 'BERGS', 5, '02/03/1998 00:00:00', '03/03/1998 00:00:00', '02/12/1998 00:00:00', 1, 109, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10867, 'LONEP', 6, '02/03/1998 00:00:00', '03/17/1998 00:00:00', '02/11/1998 00:00:00', 1, 1, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10868, 'QUEEN', 7, '02/04/1998 00:00:00', '03/04/1998 00:00:00', '02/23/1998 00:00:00', 2, 191, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10869, 'SEVES', 5, '02/04/1998 00:00:00', '03/04/1998 00:00:00', '02/09/1998 00:00:00', 1, 143, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10870, 'WOLZA', 5, '02/04/1998 00:00:00', '03/04/1998 00:00:00', '02/13/1998 00:00:00', 3, 12, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10871, 'BONAP', 9, '02/05/1998 00:00:00', '03/05/1998 00:00:00', '02/10/1998 00:00:00', 2, 112, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10872, 'GODOS', 5, '02/05/1998 00:00:00', '03/05/1998 00:00:00', '02/09/1998 00:00:00', 2, 175, 'Godos Cocina T?pica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10873, 'WILMK', 4, '02/06/1998 00:00:00', '03/06/1998 00:00:00', '02/09/1998 00:00:00', 1, 0, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10874, 'GODOS', 5, '02/06/1998 00:00:00', '03/06/1998 00:00:00', '02/11/1998 00:00:00', 2, 19, 'Godos Cocina T?pica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10875, 'BERGS', 4, '02/06/1998 00:00:00', '03/06/1998 00:00:00', '03/03/1998 00:00:00', 2, 32, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10876, 'BONAP', 7, '02/09/1998 00:00:00', '03/09/1998 00:00:00', '02/12/1998 00:00:00', 3, 60, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10877, 'RICAR', 1, '02/09/1998 00:00:00', '03/09/1998 00:00:00', '02/19/1998 00:00:00', 1, 38, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10878, 'QUICK', 4, '02/10/1998 00:00:00', '03/10/1998 00:00:00', '02/12/1998 00:00:00', 1, 46, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10879, 'WILMK', 3, '02/10/1998 00:00:00', '03/10/1998 00:00:00', '02/12/1998 00:00:00', 3, 8, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10880, 'FOLKO', 7, '02/10/1998 00:00:00', '03/24/1998 00:00:00', '02/18/1998 00:00:00', 1, 88, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10881, 'CACTU', 4, '02/11/1998 00:00:00', '03/11/1998 00:00:00', '02/18/1998 00:00:00', 1, 2, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10882, 'SAVEA', 4, '02/11/1998 00:00:00', '03/11/1998 00:00:00', '02/20/1998 00:00:00', 3, 23, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10883, 'LONEP', 8, '02/12/1998 00:00:00', '03/12/1998 00:00:00', '02/20/1998 00:00:00', 3, 0, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10884, 'LETSS', 4, '02/12/1998 00:00:00', '03/12/1998 00:00:00', '02/13/1998 00:00:00', 2, 90, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10885, 'SUPRD', 6, '02/12/1998 00:00:00', '03/12/1998 00:00:00', '02/18/1998 00:00:00', 3, 5, 'Supr?mes d?lices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10886, 'HANAR', 1, '02/13/1998 00:00:00', '03/13/1998 00:00:00', '03/02/1998 00:00:00', 1, 4, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10887, 'GALED', 8, '02/13/1998 00:00:00', '03/13/1998 00:00:00', '02/16/1998 00:00:00', 3, 1, 'Galer?a del gastron?mo', 'Rambla de Catalu?a, 23', 'Barcelona', NULL, '8022', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10888, 'GODOS', 1, '02/16/1998 00:00:00', '03/16/1998 00:00:00', '02/23/1998 00:00:00', 2, 51, 'Godos Cocina T?pica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10889, 'RATTC', 9, '02/16/1998 00:00:00', '03/16/1998 00:00:00', '02/23/1998 00:00:00', 3, 280, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10890, 'DUMON', 7, '02/16/1998 00:00:00', '03/16/1998 00:00:00', '02/18/1998 00:00:00', 1, 32, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10891, 'LEHMS', 7, '02/17/1998 00:00:00', '03/17/1998 00:00:00', '02/19/1998 00:00:00', 2, 20, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10892, 'MAISD', 4, '02/17/1998 00:00:00', '03/17/1998 00:00:00', '02/19/1998 00:00:00', 2, 120, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10893, 'KOENE', 9, '02/18/1998 00:00:00', '03/18/1998 00:00:00', '02/20/1998 00:00:00', 2, 77, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10894, 'SAVEA', 1, '02/18/1998 00:00:00', '03/18/1998 00:00:00', '02/20/1998 00:00:00', 1, 116, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10895, 'ERNSH', 3, '02/18/1998 00:00:00', '03/18/1998 00:00:00', '02/23/1998 00:00:00', 1, 162, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10896, 'MAISD', 7, '02/19/1998 00:00:00', '03/19/1998 00:00:00', '02/27/1998 00:00:00', 3, 32, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10897, 'HUNGO', 3, '02/19/1998 00:00:00', '03/19/1998 00:00:00', '02/25/1998 00:00:00', 2, 603, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10898, 'OCEAN', 4, '02/20/1998 00:00:00', '03/20/1998 00:00:00', '03/06/1998 00:00:00', 2, 1, 'Oc?ano Atl?ntico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10899, 'LILAS', 5, '02/20/1998 00:00:00', '03/20/1998 00:00:00', '02/26/1998 00:00:00', 3, 1, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10900, 'WELLI', 1, '02/20/1998 00:00:00', '03/20/1998 00:00:00', '03/04/1998 00:00:00', 2, 1, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10901, 'HILAA', 4, '02/23/1998 00:00:00', '03/23/1998 00:00:00', '02/26/1998 00:00:00', 1, 62, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10902, 'FOLKO', 1, '02/23/1998 00:00:00', '03/23/1998 00:00:00', '03/03/1998 00:00:00', 1, 44, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10903, 'HANAR', 3, '02/24/1998 00:00:00', '03/24/1998 00:00:00', '03/04/1998 00:00:00', 3, 36, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10904, 'WHITC', 3, '02/24/1998 00:00:00', '03/24/1998 00:00:00', '02/27/1998 00:00:00', 3, 162, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10905, 'WELLI', 9, '02/24/1998 00:00:00', '03/24/1998 00:00:00', '03/06/1998 00:00:00', 2, 13, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10906, 'WOLZA', 4, '02/25/1998 00:00:00', '03/11/1998 00:00:00', '03/03/1998 00:00:00', 3, 26, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10907, 'SPECD', 6, '02/25/1998 00:00:00', '03/25/1998 00:00:00', '02/27/1998 00:00:00', 3, 9, 'Sp?cialit?s du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10908, 'REGGC', 4, '02/26/1998 00:00:00', '03/26/1998 00:00:00', '03/06/1998 00:00:00', 2, 32, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10909, 'SANTG', 1, '02/26/1998 00:00:00', '03/26/1998 00:00:00', '03/10/1998 00:00:00', 2, 53, 'Sant? Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10910, 'WILMK', 1, '02/26/1998 00:00:00', '03/26/1998 00:00:00', '03/04/1998 00:00:00', 3, 38, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10911, 'GODOS', 3, '02/26/1998 00:00:00', '03/26/1998 00:00:00', '03/05/1998 00:00:00', 1, 38, 'Godos Cocina T?pica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10912, 'HUNGO', 2, '02/26/1998 00:00:00', '03/26/1998 00:00:00', '03/18/1998 00:00:00', 2, 580, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10913, 'QUEEN', 4, '02/26/1998 00:00:00', '03/26/1998 00:00:00', '03/04/1998 00:00:00', 1, 33, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10914, 'QUEEN', 6, '02/27/1998 00:00:00', '03/27/1998 00:00:00', '03/02/1998 00:00:00', 1, 21, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10915, 'TORTU', 2, '02/27/1998 00:00:00', '03/27/1998 00:00:00', '03/02/1998 00:00:00', 2, 3, 'Tortuga Restaurante', 'Avda. Azteca 123', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10916, 'RANCH', 1, '02/27/1998 00:00:00', '03/27/1998 00:00:00', '03/09/1998 00:00:00', 2, 63, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10917, 'ROMEY', 4, '03/02/1998 00:00:00', '03/30/1998 00:00:00', '03/11/1998 00:00:00', 2, 8, 'Romero y tomillo', 'Gran V?a, 1', 'Madrid', NULL, '28001', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10918, 'BOTTM', 3, '03/02/1998 00:00:00', '03/30/1998 00:00:00', '03/11/1998 00:00:00', 3, 48, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10919, 'LINOD', 2, '03/02/1998 00:00:00', '03/30/1998 00:00:00', '03/04/1998 00:00:00', 2, 19, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10920, 'AROUT', 4, '03/03/1998 00:00:00', '03/31/1998 00:00:00', '03/09/1998 00:00:00', 2, 29, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10921, 'VAFFE', 1, '03/03/1998 00:00:00', '04/14/1998 00:00:00', '03/09/1998 00:00:00', 1, 176, 'Vaffeljernet', 'Smagsloget 45', '?rhus', NULL, '8200', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10922, 'HANAR', 5, '03/03/1998 00:00:00', '03/31/1998 00:00:00', '03/05/1998 00:00:00', 3, 62, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10923, 'LAMAI', 7, '03/03/1998 00:00:00', '04/14/1998 00:00:00', '03/13/1998 00:00:00', 3, 68, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10924, 'BERGS', 3, '03/04/1998 00:00:00', '04/01/1998 00:00:00', '04/08/1998 00:00:00', 2, 151, 'Berglunds snabbk?p', 'Berguvsv?gen  8', 'Lule?', NULL, 'S-958 22', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10925, 'HANAR', 3, '03/04/1998 00:00:00', '04/01/1998 00:00:00', '03/13/1998 00:00:00', 1, 2, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10926, 'ANATR', 4, '03/04/1998 00:00:00', '04/01/1998 00:00:00', '03/11/1998 00:00:00', 3, 39, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constituci?n 2222', 'M?xico D.F.', NULL, '05021', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10927, 'LACOR', 4, '03/05/1998 00:00:00', '04/02/1998 00:00:00', '04/08/1998 00:00:00', 1, 19, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', NULL, '78000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10928, 'GALED', 1, '03/05/1998 00:00:00', '04/02/1998 00:00:00', '03/18/1998 00:00:00', 1, 1, 'Galer?a del gastron?mo', 'Rambla de Catalu?a, 23', 'Barcelona', NULL, '8022', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10929, 'FRANK', 6, '03/05/1998 00:00:00', '04/02/1998 00:00:00', '03/12/1998 00:00:00', 1, 33, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10930, 'SUPRD', 4, '03/06/1998 00:00:00', '04/17/1998 00:00:00', '03/18/1998 00:00:00', 3, 15, 'Supr?mes d?lices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10931, 'RICSU', 4, '03/06/1998 00:00:00', '03/20/1998 00:00:00', '03/19/1998 00:00:00', 2, 13, 'Richter Supermarkt', 'Starenweg 5', 'Gen?ve', NULL, '1204', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10932, 'BONAP', 8, '03/06/1998 00:00:00', '04/03/1998 00:00:00', '03/24/1998 00:00:00', 1, 134, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10933, 'ISLAT', 6, '03/06/1998 00:00:00', '04/03/1998 00:00:00', '03/16/1998 00:00:00', 3, 54, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10934, 'LEHMS', 3, '03/09/1998 00:00:00', '04/06/1998 00:00:00', '03/12/1998 00:00:00', 3, 32, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10935, 'WELLI', 4, '03/09/1998 00:00:00', '04/06/1998 00:00:00', '03/18/1998 00:00:00', 3, 47, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10936, 'GREAL', 3, '03/09/1998 00:00:00', '04/06/1998 00:00:00', '03/18/1998 00:00:00', 2, 33, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10937, 'CACTU', 7, '03/10/1998 00:00:00', '03/24/1998 00:00:00', '03/13/1998 00:00:00', 3, 31, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10938, 'QUICK', 3, '03/10/1998 00:00:00', '04/07/1998 00:00:00', '03/16/1998 00:00:00', 2, 31, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10939, 'MAGAA', 2, '03/10/1998 00:00:00', '04/07/1998 00:00:00', '03/13/1998 00:00:00', 2, 76, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10940, 'BONAP', 8, '03/11/1998 00:00:00', '04/08/1998 00:00:00', '03/23/1998 00:00:00', 3, 19, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10941, 'SAVEA', 7, '03/11/1998 00:00:00', '04/08/1998 00:00:00', '03/20/1998 00:00:00', 2, 400, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10942, 'REGGC', 9, '03/11/1998 00:00:00', '04/08/1998 00:00:00', '03/18/1998 00:00:00', 3, 17, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10943, 'BSBEV', 4, '03/11/1998 00:00:00', '04/08/1998 00:00:00', '03/19/1998 00:00:00', 2, 2, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10944, 'BOTTM', 6, '03/12/1998 00:00:00', '03/26/1998 00:00:00', '03/13/1998 00:00:00', 3, 52, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10945, 'MORGK', 4, '03/12/1998 00:00:00', '04/09/1998 00:00:00', '03/18/1998 00:00:00', 1, 10, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10946, 'VAFFE', 1, '03/12/1998 00:00:00', '04/09/1998 00:00:00', '03/19/1998 00:00:00', 2, 27, 'Vaffeljernet', 'Smagsloget 45', '?rhus', NULL, '8200', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10947, 'BSBEV', 3, '03/13/1998 00:00:00', '04/10/1998 00:00:00', '03/16/1998 00:00:00', 2, 3, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10948, 'GODOS', 3, '03/13/1998 00:00:00', '04/10/1998 00:00:00', '03/19/1998 00:00:00', 3, 23, 'Godos Cocina T?pica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10949, 'BOTTM', 2, '03/13/1998 00:00:00', '04/10/1998 00:00:00', '03/17/1998 00:00:00', 3, 74, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10950, 'MAGAA', 1, '03/16/1998 00:00:00', '04/13/1998 00:00:00', '03/23/1998 00:00:00', 2, 2, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10951, 'RICSU', 9, '03/16/1998 00:00:00', '04/27/1998 00:00:00', '04/07/1998 00:00:00', 2, 30, 'Richter Supermarkt', 'Starenweg 5', 'Gen?ve', NULL, '1204', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10952, 'ALFKI', 1, '03/16/1998 00:00:00', '04/27/1998 00:00:00', '03/24/1998 00:00:00', 1, 40, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10953, 'AROUT', 9, '03/16/1998 00:00:00', '03/30/1998 00:00:00', '03/25/1998 00:00:00', 2, 23, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10954, 'LINOD', 5, '03/17/1998 00:00:00', '04/28/1998 00:00:00', '03/20/1998 00:00:00', 1, 27, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10955, 'FOLKO', 8, '03/17/1998 00:00:00', '04/14/1998 00:00:00', '03/20/1998 00:00:00', 2, 3, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10956, 'BLAUS', 6, '03/17/1998 00:00:00', '04/28/1998 00:00:00', '03/20/1998 00:00:00', 2, 44, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10957, 'HILAA', 8, '03/18/1998 00:00:00', '04/15/1998 00:00:00', '03/27/1998 00:00:00', 3, 105, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10958, 'OCEAN', 7, '03/18/1998 00:00:00', '04/15/1998 00:00:00', '03/27/1998 00:00:00', 2, 49, 'Oc?ano Atl?ntico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10959, 'GOURL', 6, '03/18/1998 00:00:00', '04/29/1998 00:00:00', '03/23/1998 00:00:00', 2, 4, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10960, 'HILAA', 3, '03/19/1998 00:00:00', '04/02/1998 00:00:00', '04/08/1998 00:00:00', 1, 2, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10961, 'QUEEN', 8, '03/19/1998 00:00:00', '04/16/1998 00:00:00', '03/30/1998 00:00:00', 1, 104, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10962, 'QUICK', 8, '03/19/1998 00:00:00', '04/16/1998 00:00:00', '03/23/1998 00:00:00', 2, 275, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10963, 'FURIB', 9, '03/19/1998 00:00:00', '04/16/1998 00:00:00', '03/26/1998 00:00:00', 3, 2, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10964, 'SPECD', 3, '03/20/1998 00:00:00', '04/17/1998 00:00:00', '03/24/1998 00:00:00', 2, 87, 'Sp?cialit?s du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10965, 'OLDWO', 6, '03/20/1998 00:00:00', '04/17/1998 00:00:00', '03/30/1998 00:00:00', 3, 144, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10966, 'CHOPS', 4, '03/20/1998 00:00:00', '04/17/1998 00:00:00', '04/08/1998 00:00:00', 1, 27, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10967, 'TOMSP', 2, '03/23/1998 00:00:00', '04/20/1998 00:00:00', '04/02/1998 00:00:00', 2, 62, 'Toms Spezialit?ten', 'Luisenstr. 48', 'M?nster', NULL, '44087', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10968, 'ERNSH', 1, '03/23/1998 00:00:00', '04/20/1998 00:00:00', '04/01/1998 00:00:00', 3, 74, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10969, 'COMMI', 1, '03/23/1998 00:00:00', '04/20/1998 00:00:00', '03/30/1998 00:00:00', 2, 0, 'Com?rcio Mineiro', 'Av. dos Lus?adas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10970, 'BOLID', 9, '03/24/1998 00:00:00', '04/07/1998 00:00:00', '04/24/1998 00:00:00', 1, 16, 'B?lido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10971, 'FRANR', 2, '03/24/1998 00:00:00', '04/21/1998 00:00:00', '04/02/1998 00:00:00', 2, 121, 'France restauration', '54, rue Royale', 'Nantes', NULL, '44000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10972, 'LACOR', 4, '03/24/1998 00:00:00', '04/21/1998 00:00:00', '03/26/1998 00:00:00', 2, 0, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', NULL, '78000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10973, 'LACOR', 6, '03/24/1998 00:00:00', '04/21/1998 00:00:00', '03/27/1998 00:00:00', 2, 15, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', NULL, '78000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10974, 'SPLIR', 3, '03/25/1998 00:00:00', '04/08/1998 00:00:00', '04/03/1998 00:00:00', 3, 12, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10975, 'BOTTM', 1, '03/25/1998 00:00:00', '04/22/1998 00:00:00', '03/27/1998 00:00:00', 3, 32, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10976, 'HILAA', 1, '03/25/1998 00:00:00', '05/06/1998 00:00:00', '04/03/1998 00:00:00', 1, 37, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10977, 'FOLKO', 8, '03/26/1998 00:00:00', '04/23/1998 00:00:00', '04/10/1998 00:00:00', 3, 208, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10978, 'MAISD', 9, '03/26/1998 00:00:00', '04/23/1998 00:00:00', '04/23/1998 00:00:00', 2, 32, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10979, 'ERNSH', 8, '03/26/1998 00:00:00', '04/23/1998 00:00:00', '03/31/1998 00:00:00', 2, 353, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10980, 'FOLKO', 4, '03/27/1998 00:00:00', '05/08/1998 00:00:00', '04/17/1998 00:00:00', 1, 1, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10981, 'HANAR', 1, '03/27/1998 00:00:00', '04/24/1998 00:00:00', '04/02/1998 00:00:00', 2, 193, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10982, 'BOTTM', 2, '03/27/1998 00:00:00', '04/24/1998 00:00:00', '04/08/1998 00:00:00', 1, 14, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10983, 'SAVEA', 2, '03/27/1998 00:00:00', '04/24/1998 00:00:00', '04/06/1998 00:00:00', 2, 657, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10984, 'SAVEA', 1, '03/30/1998 00:00:00', '04/27/1998 00:00:00', '04/03/1998 00:00:00', 3, 211, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10985, 'HUNGO', 2, '03/30/1998 00:00:00', '04/27/1998 00:00:00', '04/02/1998 00:00:00', 1, 91, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10986, 'OCEAN', 8, '03/30/1998 00:00:00', '04/27/1998 00:00:00', '04/21/1998 00:00:00', 2, 217, 'Oc?ano Atl?ntico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10987, 'EASTC', 8, '03/31/1998 00:00:00', '04/28/1998 00:00:00', '04/06/1998 00:00:00', 1, 185, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10988, 'RATTC', 3, '03/31/1998 00:00:00', '04/28/1998 00:00:00', '04/10/1998 00:00:00', 2, 61, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10989, 'QUEDE', 2, '03/31/1998 00:00:00', '04/28/1998 00:00:00', '04/02/1998 00:00:00', 1, 34, 'Que Del?cia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10990, 'ERNSH', 2, '04/01/1998 00:00:00', '05/13/1998 00:00:00', '04/07/1998 00:00:00', 3, 117, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10991, 'QUICK', 1, '04/01/1998 00:00:00', '04/29/1998 00:00:00', '04/07/1998 00:00:00', 1, 38, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10992, 'THEBI', 1, '04/01/1998 00:00:00', '04/29/1998 00:00:00', '04/03/1998 00:00:00', 3, 4, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10993, 'FOLKO', 7, '04/01/1998 00:00:00', '04/29/1998 00:00:00', '04/10/1998 00:00:00', 3, 8, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10994, 'VAFFE', 2, '04/02/1998 00:00:00', '04/16/1998 00:00:00', '04/09/1998 00:00:00', 3, 65, 'Vaffeljernet', 'Smagsloget 45', '?rhus', NULL, '8200', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10995, 'PERIC', 1, '04/02/1998 00:00:00', '04/30/1998 00:00:00', '04/06/1998 00:00:00', 3, 46, 'Pericles Comidas cl?sicas', 'Calle Dr. Jorge Cash 321', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10996, 'QUICK', 4, '04/02/1998 00:00:00', '04/30/1998 00:00:00', '04/10/1998 00:00:00', 2, 1, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10997, 'LILAS', 8, '04/03/1998 00:00:00', '05/15/1998 00:00:00', '04/13/1998 00:00:00', 2, 73, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10998, 'WOLZA', 8, '04/03/1998 00:00:00', '04/17/1998 00:00:00', '04/17/1998 00:00:00', 2, 20, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (10999, 'OTTIK', 6, '04/03/1998 00:00:00', '05/01/1998 00:00:00', '04/10/1998 00:00:00', 2, 96, 'Ottilies K?seladen', 'Mehrheimerstr. 369', 'K?ln', NULL, '50739', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11000, 'RATTC', 2, '04/06/1998 00:00:00', '05/04/1998 00:00:00', '04/14/1998 00:00:00', 3, 55, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11001, 'FOLKO', 2, '04/06/1998 00:00:00', '05/04/1998 00:00:00', '04/14/1998 00:00:00', 2, 197, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11002, 'SAVEA', 4, '04/06/1998 00:00:00', '05/04/1998 00:00:00', '04/16/1998 00:00:00', 1, 141, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11003, 'THECR', 3, '04/06/1998 00:00:00', '05/04/1998 00:00:00', '04/08/1998 00:00:00', 3, 14, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11004, 'MAISD', 3, '04/07/1998 00:00:00', '05/05/1998 00:00:00', '04/20/1998 00:00:00', 1, 44, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11005, 'WILMK', 2, '04/07/1998 00:00:00', '05/05/1998 00:00:00', '04/10/1998 00:00:00', 1, 0, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11006, 'GREAL', 3, '04/07/1998 00:00:00', '05/05/1998 00:00:00', '04/15/1998 00:00:00', 2, 25, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11007, 'PRINI', 8, '04/08/1998 00:00:00', '05/06/1998 00:00:00', '04/13/1998 00:00:00', 2, 202, 'Princesa Isabel Vinhos', 'Estrada da sa?de n. 58', 'Lisboa', NULL, '1756', 'Portugal');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11008, 'ERNSH', 7, '04/08/1998 00:00:00', '05/06/1998 00:00:00', NULL, 3, 79, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11009, 'GODOS', 2, '04/08/1998 00:00:00', '05/06/1998 00:00:00', '04/10/1998 00:00:00', 1, 59, 'Godos Cocina T?pica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11010, 'REGGC', 2, '04/09/1998 00:00:00', '05/07/1998 00:00:00', '04/21/1998 00:00:00', 2, 28, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11011, 'ALFKI', 3, '04/09/1998 00:00:00', '05/07/1998 00:00:00', '04/13/1998 00:00:00', 1, 1, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11012, 'FRANK', 1, '04/09/1998 00:00:00', '04/23/1998 00:00:00', '04/17/1998 00:00:00', 3, 242, 'Frankenversand', 'Berliner Platz 43', 'M?nchen', NULL, '80805', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11013, 'ROMEY', 2, '04/09/1998 00:00:00', '05/07/1998 00:00:00', '04/10/1998 00:00:00', 1, 32, 'Romero y tomillo', 'Gran V?a, 1', 'Madrid', NULL, '28001', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11014, 'LINOD', 2, '04/10/1998 00:00:00', '05/08/1998 00:00:00', '04/15/1998 00:00:00', 3, 23, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11015, 'SANTG', 2, '04/10/1998 00:00:00', '04/24/1998 00:00:00', '04/20/1998 00:00:00', 2, 4, 'Sant? Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11016, 'AROUT', 9, '04/10/1998 00:00:00', '05/08/1998 00:00:00', '04/13/1998 00:00:00', 2, 33, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11017, 'ERNSH', 9, '04/13/1998 00:00:00', '05/11/1998 00:00:00', '04/20/1998 00:00:00', 2, 754, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11018, 'LONEP', 4, '04/13/1998 00:00:00', '05/11/1998 00:00:00', '04/16/1998 00:00:00', 2, 11, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11019, 'RANCH', 6, '04/13/1998 00:00:00', '05/11/1998 00:00:00', NULL, 3, 3, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11020, 'OTTIK', 2, '04/14/1998 00:00:00', '05/12/1998 00:00:00', '04/16/1998 00:00:00', 2, 43, 'Ottilies K?seladen', 'Mehrheimerstr. 369', 'K?ln', NULL, '50739', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11021, 'QUICK', 3, '04/14/1998 00:00:00', '05/12/1998 00:00:00', '04/21/1998 00:00:00', 1, 297, 'QUICK-Stop', 'Taucherstra?e 10', 'Cunewalde', NULL, '01307', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11022, 'HANAR', 9, '04/14/1998 00:00:00', '05/12/1998 00:00:00', '05/04/1998 00:00:00', 2, 6, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11023, 'BSBEV', 1, '04/14/1998 00:00:00', '04/28/1998 00:00:00', '04/24/1998 00:00:00', 2, 123, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11024, 'EASTC', 4, '04/15/1998 00:00:00', '05/13/1998 00:00:00', '04/20/1998 00:00:00', 1, 74, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11025, 'WARTH', 6, '04/15/1998 00:00:00', '05/13/1998 00:00:00', '04/24/1998 00:00:00', 3, 29, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11026, 'FRANS', 4, '04/15/1998 00:00:00', '05/13/1998 00:00:00', '04/28/1998 00:00:00', 1, 47, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11027, 'BOTTM', 1, '04/16/1998 00:00:00', '05/14/1998 00:00:00', '04/20/1998 00:00:00', 1, 52, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11028, 'KOENE', 2, '04/16/1998 00:00:00', '05/14/1998 00:00:00', '04/22/1998 00:00:00', 1, 29, 'K?niglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11029, 'CHOPS', 4, '04/16/1998 00:00:00', '05/14/1998 00:00:00', '04/27/1998 00:00:00', 1, 47, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11030, 'SAVEA', 7, '04/17/1998 00:00:00', '05/15/1998 00:00:00', '04/27/1998 00:00:00', 2, 830, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11031, 'SAVEA', 6, '04/17/1998 00:00:00', '05/15/1998 00:00:00', '04/24/1998 00:00:00', 2, 227, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11032, 'WHITC', 2, '04/17/1998 00:00:00', '05/15/1998 00:00:00', '04/23/1998 00:00:00', 3, 606, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11033, 'RICSU', 7, '04/17/1998 00:00:00', '05/15/1998 00:00:00', '04/23/1998 00:00:00', 3, 84, 'Richter Supermarkt', 'Starenweg 5', 'Gen?ve', NULL, '1204', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11034, 'OLDWO', 8, '04/20/1998 00:00:00', '06/01/1998 00:00:00', '04/27/1998 00:00:00', 1, 40, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11035, 'SUPRD', 2, '04/20/1998 00:00:00', '05/18/1998 00:00:00', '04/24/1998 00:00:00', 2, 0, 'Supr?mes d?lices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11036, 'DRACD', 8, '04/20/1998 00:00:00', '05/18/1998 00:00:00', '04/22/1998 00:00:00', 3, 149, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11037, 'GODOS', 7, '04/21/1998 00:00:00', '05/19/1998 00:00:00', '04/27/1998 00:00:00', 1, 3, 'Godos Cocina T?pica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11038, 'SUPRD', 1, '04/21/1998 00:00:00', '05/19/1998 00:00:00', '04/30/1998 00:00:00', 2, 29, 'Supr?mes d?lices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11039, 'LINOD', 1, '04/21/1998 00:00:00', '05/19/1998 00:00:00', NULL, 2, 65, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11040, 'GREAL', 4, '04/22/1998 00:00:00', '05/20/1998 00:00:00', NULL, 3, 18, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11041, 'CHOPS', 3, '04/22/1998 00:00:00', '05/20/1998 00:00:00', '04/28/1998 00:00:00', 2, 48, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11042, 'COMMI', 2, '04/22/1998 00:00:00', '05/06/1998 00:00:00', '05/01/1998 00:00:00', 1, 29, 'Com?rcio Mineiro', 'Av. dos Lus?adas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11043, 'SPECD', 5, '04/22/1998 00:00:00', '05/20/1998 00:00:00', '04/29/1998 00:00:00', 2, 8, 'Sp?cialit?s du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11044, 'WOLZA', 4, '04/23/1998 00:00:00', '05/21/1998 00:00:00', '05/01/1998 00:00:00', 1, 8, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11045, 'BOTTM', 6, '04/23/1998 00:00:00', '05/21/1998 00:00:00', NULL, 2, 70, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11046, 'WANDK', 8, '04/23/1998 00:00:00', '05/21/1998 00:00:00', '04/24/1998 00:00:00', 2, 71, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11047, 'EASTC', 7, '04/24/1998 00:00:00', '05/22/1998 00:00:00', '05/01/1998 00:00:00', 3, 46, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11048, 'BOTTM', 7, '04/24/1998 00:00:00', '05/22/1998 00:00:00', '04/30/1998 00:00:00', 3, 24, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11049, 'GOURL', 3, '04/24/1998 00:00:00', '05/22/1998 00:00:00', '05/04/1998 00:00:00', 1, 8, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11050, 'FOLKO', 8, '04/27/1998 00:00:00', '05/25/1998 00:00:00', '05/05/1998 00:00:00', 2, 59, 'Folk och f? HB', '?kergatan 24', 'Br?cke', NULL, 'S-844 67', 'Sweden');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11051, 'LAMAI', 7, '04/27/1998 00:00:00', '05/25/1998 00:00:00', NULL, 3, 2, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11052, 'HANAR', 3, '04/27/1998 00:00:00', '05/25/1998 00:00:00', '05/01/1998 00:00:00', 1, 67, 'Hanari Carnes', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11053, 'PICCO', 2, '04/27/1998 00:00:00', '05/25/1998 00:00:00', '04/29/1998 00:00:00', 2, 53, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11054, 'CACTU', 8, '04/28/1998 00:00:00', '05/26/1998 00:00:00', NULL, 1, 0, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11055, 'HILAA', 7, '04/28/1998 00:00:00', '05/26/1998 00:00:00', '05/05/1998 00:00:00', 2, 120, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11056, 'EASTC', 8, '04/28/1998 00:00:00', '05/12/1998 00:00:00', '05/01/1998 00:00:00', 2, 278, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11057, 'NORTS', 3, '04/29/1998 00:00:00', '05/27/1998 00:00:00', '05/01/1998 00:00:00', 3, 4, 'North/South', 'South House 300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'UK');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11058, 'BLAUS', 9, '04/29/1998 00:00:00', '05/27/1998 00:00:00', NULL, 3, 31, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11059, 'RICAR', 2, '04/29/1998 00:00:00', '06/10/1998 00:00:00', NULL, 2, 85, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11060, 'FRANS', 2, '04/30/1998 00:00:00', '05/28/1998 00:00:00', '05/04/1998 00:00:00', 2, 10, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11061, 'GREAL', 4, '04/30/1998 00:00:00', '06/11/1998 00:00:00', NULL, 3, 14, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11062, 'REGGC', 4, '04/30/1998 00:00:00', '05/28/1998 00:00:00', NULL, 2, 29, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11063, 'HUNGO', 3, '04/30/1998 00:00:00', '05/28/1998 00:00:00', '05/06/1998 00:00:00', 2, 81, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11064, 'SAVEA', 1, '05/01/1998 00:00:00', '05/29/1998 00:00:00', '05/04/1998 00:00:00', 1, 30, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11065, 'LILAS', 8, '05/01/1998 00:00:00', '05/29/1998 00:00:00', NULL, 1, 12, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11066, 'WHITC', 7, '05/01/1998 00:00:00', '05/29/1998 00:00:00', '05/04/1998 00:00:00', 2, 44, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11067, 'DRACD', 1, '05/04/1998 00:00:00', '05/18/1998 00:00:00', '05/06/1998 00:00:00', 2, 7, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11068, 'QUEEN', 8, '05/04/1998 00:00:00', '06/01/1998 00:00:00', NULL, 2, 81, 'Queen Cozinha', 'Alameda dos Can?rios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11069, 'TORTU', 1, '05/04/1998 00:00:00', '06/01/1998 00:00:00', '05/06/1998 00:00:00', 2, 15, 'Tortuga Restaurante', 'Avda. Azteca 123', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11070, 'LEHMS', 2, '05/05/1998 00:00:00', '06/02/1998 00:00:00', NULL, 1, 136, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11071, 'LILAS', 1, '05/05/1998 00:00:00', '06/02/1998 00:00:00', NULL, 1, 0, 'LILA-Supermercado', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11072, 'ERNSH', 4, '05/05/1998 00:00:00', '06/02/1998 00:00:00', NULL, 2, 258, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11073, 'PERIC', 2, '05/05/1998 00:00:00', '06/02/1998 00:00:00', NULL, 2, 24, 'Pericles Comidas cl?sicas', 'Calle Dr. Jorge Cash 321', 'M?xico D.F.', NULL, '05033', 'Mexico');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11074, 'SIMOB', 7, '05/06/1998 00:00:00', '06/03/1998 00:00:00', NULL, 2, 18, 'Simons bistro', 'Vinb?ltet 34', 'Kobenhavn', NULL, '1734', 'Denmark');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11075, 'RICSU', 8, '05/06/1998 00:00:00', '06/03/1998 00:00:00', NULL, 2, 6, 'Richter Supermarkt', 'Starenweg 5', 'Gen?ve', NULL, '1204', 'Switzerland');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11076, 'BONAP', 4, '05/06/1998 00:00:00', '06/03/1998 00:00:00', NULL, 2, 38, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES (11077, 'RATTC', 1, '05/06/1998 00:00:00', '06/03/1998 00:00:00', NULL, 2, 8, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
EXECUTE IMMEDIATE 'ALTER TRIGGER ORDERS_BIU ENABLE';
END;
/