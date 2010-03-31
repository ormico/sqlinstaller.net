CREATE TABLE categories 
(
    categoryid int NOT NULL AUTO_INCREMENT,
    categoryname varchar(15) NOT NULL,
    description text,
    picture mediumblob,
    PRIMARY KEY(categoryid)
) Type=InnoDB;

CREATE UNIQUE INDEX categories_categoryname_idx ON categories (categoryname);
