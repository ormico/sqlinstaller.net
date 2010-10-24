CREATE TABLE shippers 
(
    shipperid serial NOT NULL,
    companyname varchar(40) NOT NULL,
    phone varchar(24),
    PRIMARY KEY (shipperid)
);
