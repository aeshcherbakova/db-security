CREATE TABLE order_detail (
  id number generated always as identity primary key,
  good_id number(9, 0) NOT NULL,
  count number(3, 0) NOT NULL,
  order_id number NOT NULL
);

CREATE TABLE orders (
  id number generated always as identity primary key,
  date date NOT NULL,
  customer_id number(6, 0) NOT NULL,
  sale_id number(3, 0)
);

CREATE TABLE good (
  id number generated always as identity primary key,
  name varchar2(100) NOT NULL,
  vendor_id number(4, 0) NOT NULL,
  price number(6, 2) NOT NULL,
  category_id number(3, 0) NOT NULL,
  date_from date NOT NULL,
  date_to date NOT NULL
);

CREATE TABLE vendor (
  id number generated always as identity primary key,
  name varchar2(100) NOT NULL,
  phone varchar2(16) NOT NULL,
  address varchar2(200)
);

CREATE TABLE category (
  id number generated always as identity primary key,
  name varchar2(30) NOT NULL
);

CREATE TABLE customer (
  id number generated always as identity primary key,
  name varchar2(20) NOT NULL,
  surname varchar2(20) NOT NULL,
  phone varchar2(16)
);

CREATE TABLE sale (
  id number generated always as identity primary key,
  min_sum number(8, 0) NOT NULL,
  percent number(3, 1) NOT NULL,
  date_from date NOT NULL,
  date_to date NOT NULL
);


ALTER TABLE order_detail ADD FOREIGN KEY (good_id) REFERENCES good (id);

ALTER TABLE order_detail ADD FOREIGN KEY (order_id) REFERENCES orders (id);

ALTER TABLE good ADD FOREIGN KEY (vendor_id) REFERENCES vendor (id);

ALTER TABLE good ADD FOREIGN KEY (category_id) REFERENCES category (id);

ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customer (id);

ALTER TABLE orders ADD FOREIGN KEY (sale_id) REFERENCES sale (id);



-- dropping foreign keys and tables

-- select constraint_name
-- from user_constraints
-- where table_name = 'GOOD'
--   and constraint_type = 'R';

-- alter table good drop constraint SYS_C007545;
-- drop table category;

