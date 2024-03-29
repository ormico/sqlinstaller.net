
CREATE OR REPLACE PROCEDURE PRODUCTSSELECT
(
    RESULTSET OUT SYS_REFCURSOR
)
IS
BEGIN
    OPEN RESULTSET FOR
	SELECT
		PRODUCTID,
		PRODUCTNAME,
		SUPPLIERID,
		CATEGORYID,
		QUANTITYPERUNIT,
		UNITPRICE,
		UNITSINSTOCK,
		UNITSONORDER,
		REORDERLEVEL,
		DISCONTINUED
	FROM PRODUCTS;

END;
/

CREATE OR REPLACE PROCEDURE PRODUCTSUPDATE
(
	VPRODUCTID IN PRODUCTS.PRODUCTID%type,
	VPRODUCTNAME IN PRODUCTS.PRODUCTNAME%type,
	VSUPPLIERID IN PRODUCTS.SUPPLIERID%type,
	VCATEGORYID IN PRODUCTS.CATEGORYID%type,
	VQUANTITYPERUNIT IN PRODUCTS.QUANTITYPERUNIT%type,
	VUNITPRICE IN PRODUCTS.UNITPRICE%type,
	VUNITSINSTOCK IN PRODUCTS.UNITSINSTOCK%type,
	VUNITSONORDER IN PRODUCTS.UNITSONORDER%type,
	VREORDERLEVEL IN PRODUCTS.REORDERLEVEL%type,
	VDISCONTINUED IN PRODUCTS.DISCONTINUED%type
)
IS
BEGIN
	UPDATE PRODUCTS
	SET
		PRODUCTID	= VPRODUCTID,
		PRODUCTNAME	= VPRODUCTNAME,
		SUPPLIERID	= VSUPPLIERID,
		CATEGORYID	= VCATEGORYID,
		QUANTITYPERUNIT	= VQUANTITYPERUNIT,
		UNITPRICE	= VUNITPRICE,
		UNITSINSTOCK	= VUNITSINSTOCK,
		UNITSONORDER	= VUNITSONORDER,
		REORDERLEVEL	= VREORDERLEVEL,
		DISCONTINUED	= VDISCONTINUED
	WHERE
		PRODUCTID = VPRODUCTID
;
	
	
END;
/



CREATE OR REPLACE PROCEDURE PRODUCTSINSERT
(
	VPRODUCTID IN PRODUCTS.PRODUCTID%type,
	VPRODUCTNAME IN PRODUCTS.PRODUCTNAME%type,
	VSUPPLIERID IN PRODUCTS.SUPPLIERID%type,
	VCATEGORYID IN PRODUCTS.CATEGORYID%type,
	VQUANTITYPERUNIT IN PRODUCTS.QUANTITYPERUNIT%type,
	VUNITPRICE IN PRODUCTS.UNITPRICE%type,
	VUNITSINSTOCK IN PRODUCTS.UNITSINSTOCK%type,
	VUNITSONORDER IN PRODUCTS.UNITSONORDER%type,
	VREORDERLEVEL IN PRODUCTS.REORDERLEVEL%type,
	VDISCONTINUED IN PRODUCTS.DISCONTINUED%type
)
IS
BEGIN


	INSERT
	INTO PRODUCTS
	(
		PRODUCTID,
		PRODUCTNAME,
		SUPPLIERID,
		CATEGORYID,
		QUANTITYPERUNIT,
		UNITPRICE,
		UNITSINSTOCK,
		UNITSONORDER,
		REORDERLEVEL,
		DISCONTINUED
	)
	VALUES
	(
		VPRODUCTID,
		VPRODUCTNAME,
		VSUPPLIERID,
		VCATEGORYID,
		VQUANTITYPERUNIT,
		VUNITPRICE,
		VUNITSINSTOCK,
		VUNITSONORDER,
		VREORDERLEVEL,
		VDISCONTINUED
	);
END;
/

CREATE OR REPLACE PROCEDURE PRODUCTSDELETE
(
	VPRODUCTID IN PRODUCTS.PRODUCTID%type
)
IS
BEGIN

	DELETE	FROM PRODUCTS
	WHERE
		PRODUCTID = VPRODUCTID;

END;
/
