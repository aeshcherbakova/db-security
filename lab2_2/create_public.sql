-- create views
create view saleV as
  select id, percent
  from sale;

create view ordersV as
  select id, "date", sale_id
  from orders;

create view goodV as
  select id, name, price
  from good;


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


-- create public synonyms for all views
create public synonym saleV 
  for shop_main_admin.saleV;
create public synonym ordersV 
  for shop_main_admin.ordersV;
create public synonym goodV 
  for shop_main_admin.goodV;