options(skip=1)
LOAD DATA
INFILE 'sales.csv'
BADFILE 'sales.bad'
DISCARDFILE 'sales.dsc'
INTO TABLE sales
APPEND
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
  min_purchase_sum,
  sale_percent
)
