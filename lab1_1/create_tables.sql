CREATE TABLE purchase_item (
  id number generated always as identity primary key,
  good_id number(7, 0) NOT NULL,
  quantity number(3, 0) NOT NULL,
  purchase_id number(6,0) NOT NULL 
);

CREATE TABLE purchase (
  id number generated always as identity primary key,
  purchase_date date NOT NULL,
  customer_id number(6, 0) NOT NULL,
  sale_id number(1, 0) NOT NULL
);

CREATE TABLE goods (
  id number generated always as identity primary key,
  item varchar2(100) NOT NULL,
  supplier_id number(3, 0) NOT NULL,
  price number(4, 2) NOT NULL,
  category_id number(2, 0) NOT NULL
);

CREATE TABLE suppliers (
  id number generated always as identity primary key,
  name varchar2(100) NOT NULL,
  phone_number varchar2(16) NOT NULL,
  address varchar2(200)
);

CREATE TABLE categories (
  id number generated always as identity primary key,
  name varchar2(30) NOT NULL
);

CREATE TABLE customers (
  id number generated always as identity primary key,
  name varchar2(20) NOT NULL,
  surname varchar2(20) NOT NULL,
  patronymic varchar2(20),
  phone_number varchar2(16) NOT NULL,
  purchase_sum number(7, 2) NOT NULL
);

CREATE TABLE sales (
  id number generated always as identity primary key,
  min_purchase_sum number(8, 0) NOT NULL,
  sale_percent number(2, 0) NOT NULL
);

ALTER TABLE goods ADD FOREIGN KEY (supplier_id) REFERENCES suppliers (id);

ALTER TABLE goods ADD FOREIGN KEY (category_id) REFERENCES categories (id);

ALTER TABLE purchase ADD FOREIGN KEY (customer_id) REFERENCES customers (id);

ALTER TABLE purchase_item ADD FOREIGN KEY (purchase_id) REFERENCES purchase (id);

ALTER TABLE purchase_item ADD FOREIGN KEY (good_id) REFERENCES goods (id);

ALTER TABLE purchase ADD FOREIGN KEY (sale_id) REFERENCES sales (id);

