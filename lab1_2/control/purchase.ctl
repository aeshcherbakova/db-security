options(skip=1)
LOAD DATA
INFILE 'purchase.csv'
BADFILE 'purchase.bad'
DISCARDFILE 'purchase.dsc'
INTO TABLE purchase
APPEND
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
  purchase_date DATE "DD.MM.YYYY HH:MI",
  customer_id,
  sale_id
)
