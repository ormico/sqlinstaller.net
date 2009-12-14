CREATE TABLE categories 
(
    categoryid serial NOT NULL,
    categoryname varchar(15) NOT NULL,
    description text,
    picture bytea,
    PRIMARY KEY(categoryid)
);

CREATE UNIQUE INDEX categories_categoryname_idx ON categories USING btree (categoryname);
