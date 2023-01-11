options(skip=1)
LOAD DATA
INFILE 'customers.csv'
BADFILE 'customers.bad'
DISCARDFILE 'customers.dsc'
INTO TABLE customers
APPEND
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
  name,
  surname,
  patronymic,
  phone_number,
  purchase_sum
)
