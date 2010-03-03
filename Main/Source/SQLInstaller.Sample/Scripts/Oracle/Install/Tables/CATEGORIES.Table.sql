CREATE TABLE categories 
(
    categoryid number(10) NOT NULL,
    categoryname varchar(15) NOT NULL,
    description varchar(4000),
    picture blob,
    PRIMARY KEY(categoryid)
);

CREATE SEQUENCE categories_categoryid_seq START WITH 10 NOCYCLE;
CREATE UNIQUE INDEX categories_categoryname_idx ON categories (categoryname);

