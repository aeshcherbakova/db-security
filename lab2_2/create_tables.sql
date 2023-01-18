
-- shop_main_amdin/pas@"localhost:1521/shop_pdb"

CREATE TABLE sale (
  id number(3, 0),
  min_sum number(8, 0) NOT NULL,
  percent number(3, 1) NOT NULL,
  date_from date NOT NULL,
  date_to date NOT NULL,
  CONSTRAINT sale_pk PRIMARY KEY (id)
);

CREATE TABLE vendor (
  id number(4, 0),
  name varchar2(100) NOT NULL,
  phone varchar2(16) NOT NULL,
  address varchar2(200),
  CONSTRAINT vendor_pk PRIMARY KEY (id)
);

CREATE TABLE category (
  id number(3, 0),
  name varchar2(30) NOT NULL,
  CONSTRAINT category_pk PRIMARY KEY (id)
);

CREATE TABLE customer (
  id number(6, 0),
  name varchar2(20) NOT NULL,
  surname varchar2(20) NOT NULL,
  phone varchar2(16),
  CONSTRAINT customer_pk PRIMARY KEY (id)
);

CREATE TABLE good (
  id number(9, 0),
  name varchar2(100) NOT NULL,
  vendor_id number(4, 0) NOT NULL,
  price number(6, 2) NOT NULL,
  category_id number(3, 0) NOT NULL,
  date_from date NOT NULL,
  date_to date NOT NULL,
  CONSTRAINT good_pk PRIMARY KEY (id),
  CONSTRAINT good_fk_category 
    FOREIGN KEY (category_id) 
    REFERENCES category (id),
  CONSTRAINT good_fk_vendor 
    FOREIGN KEY (vendor_id) 
    REFERENCES vendor (id)
);

CREATE TABLE orders (
  id number(7, 0),
  "date" date NOT NULL,
  customer_id number(6, 0) NOT NULL,
  sale_id number(3, 0),
  CONSTRAINT orders_pk PRIMARY KEY (id),
  CONSTRAINT orders_fk_cistomer 
    FOREIGN KEY (customer_id) 
    REFERENCES customer (id),
  CONSTRAINT orders_fk_sale 
    FOREIGN KEY (sale_id) 
    REFERENCES sale (id)
);

CREATE TABLE order_detail (
  id number(8, 0),
  good_id number(9, 0) NOT NULL,
  count number(3, 0) NOT NULL,
  order_id number(7, 0) NOT NULL,
  CONSTRAINT order_detail_pk PRIMARY KEY (id),
  CONSTRAINT order_detail_fk_good
    FOREIGN KEY (good_id) 
    REFERENCES good (id),
  CONSTRAINT order_detail_fk_order 
    FOREIGN KEY (order_id) 
    REFERENCES orders (id)
);


-- create public synonyms for all tables
create public synonym vendor 
  for shop_main_admin.vendor;
create public synonym customer 
  for shop_main_admin.customer;
create public synonym good 
  for shop_main_admin.good;
create public synonym category 
  for shop_main_admin.category;
create public synonym orders 
  for shop_main_admin.orders;
create public synonym order_detail 
  for shop_main_admin.order_detail;
create public synonym sale 
  for shop_main_admin.sale;
