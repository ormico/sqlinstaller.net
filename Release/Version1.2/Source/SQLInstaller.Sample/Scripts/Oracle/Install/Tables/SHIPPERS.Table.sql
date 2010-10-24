CREATE TABLE shippers 
(
    shipperid number(10) NOT NULL,
    companyname varchar(40) NOT NULL,
    phone varchar(24),
    PRIMARY KEY (shipperid)
);
CREATE SEQUENCE shippers_shipperid_seq START WITH 10 NOCYCLE;
