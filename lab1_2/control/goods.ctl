options(skip=1)
LOAD DATA
INFILE 'goods.csv'
BADFILE 'goods.bad'
DISCARDFILE 'goods.dsc'
INTO TABLE goods
APPEND
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
  item,
  supplier_id,
  price,
  category_id
)
