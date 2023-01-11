options (skip=1)
LOAD DATA
INFILE 'purchase_item.csv'
BADFILE 'purchase_item.bad'
DISCARDFILE 'purchase_item.dsc'
INTO TABLE purchase_item
APPEND
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
  good_id,
  quantity,
  purchase_id
)
