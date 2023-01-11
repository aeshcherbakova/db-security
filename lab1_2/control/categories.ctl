options(skip=1)
LOAD DATA
INFILE 'categories.csv'
BADFILE 'categories.bad'
DISCARDFILE 'categories.dsc'
INTO TABLE categories
APPEND
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
  name
)
