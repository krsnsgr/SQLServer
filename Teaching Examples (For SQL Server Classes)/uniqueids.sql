CREATE TABLE R(
ID SMALLINT,
Random VARCHAR(50) DEFAULT NEWID()
)

INSERT INTO R (ID)
VALUES (1)

SELECT Random
, LOWER(SUBSTRING(REPLACE(Random,'-',''),1,12)) + SUBSTRING(REPLACE(Random,'-',''),12,50)
FROM R
