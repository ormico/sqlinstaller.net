create type orderhistory as (productname varchar(40), totalquantity decimal);

CREATE FUNCTION custorderhist(IN customerid character varying) RETURNS setof orderhistory AS
$BODY$SELECT ProductName, SUM(Quantity) AS totalquantity
FROM products P, orderdetails OD, orders O, customers C
WHERE C.CustomerID = $1
AND C.CustomerID = O.CustomerID AND O.OrderID = OD.OrderID AND OD.ProductID = P.ProductID
GROUP BY ProductName;$BODY$
LANGUAGE 'sql' VOLATILE;
