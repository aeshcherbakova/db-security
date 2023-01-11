options(skip=1)
LOAD DATA
INFILE 'suppliers.csv'
BADFILE 'suppliers.bad'
DISCARDFILE 'suppliers.dsc'
INTO TABLE suppliers
APPEND
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
  name,
  phone_number,
  address
)
