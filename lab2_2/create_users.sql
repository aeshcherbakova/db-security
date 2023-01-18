-- create roles

create role accounting;
grant create session         to accounting;
grant select on orders       to accounting;
grant select on order_detail to accounting;
grant select on good         to accounting;
grant select on saleV        to accounting;


create role client_manager;
grant create session         to client_manager;
grant 
	select, 
	insert, 
	update   on customer     to client_manager;
grant select on orders       to client_manager;
grant select on order_detail to client_manager;
grant select on goodV        to client_manager;
grant select on saleV        to client_manager;


create role seller;
grant create session         to seller;
grant 
	select, 
	insert, 
	update   on orders       to seller;
grant 
	select, 
	insert, 
	update   on order_detail to seller;
grant select on customer     to seller;
grant select on good         to seller;
grant select on sale         to seller;


create role prch_manager;
grant create session     to prch_manager;
grant 
	select, 
	insert, 
	update   on vendor   to prch_manager;
grant 
	select, 
	insert, 
	update   on category to prch_manager;
grant 
	select, 
	insert, 
	update   on good     to prch_manager;


create role analytic;
grant create session         to analytic;
grant select on ordersV      to analytic;
grant select on order_detail to analytic;
grant select on good         to analytic;
grant select on saleV        to analytic;
grant select on category     to analytic;







-- create users
CREATE USER accountant1
    IDENTIFIED BY pas
    DEFAULT TABLESPACE SHOP_PDB_USERS
    TEMPORARY TABLESPACE temp	
    QUOTA 500M ON SHOP_PDB_USERS;
grant accounting to accountant1;

CREATE USER cm1
    IDENTIFIED BY pas
    DEFAULT TABLESPACE SHOP_PDB_USERS
    TEMPORARY TABLESPACE temp	
    QUOTA 500M ON SHOP_PDB_USERS;
grant client_manager to cm1;

CREATE USER seller1
    IDENTIFIED BY pas
    DEFAULT TABLESPACE SHOP_PDB_USERS
    TEMPORARY TABLESPACE temp	
    QUOTA 500M ON SHOP_PDB_USERS;
grant seller to seller1;

CREATE USER pm1
    IDENTIFIED BY pas
    DEFAULT TABLESPACE SHOP_PDB_USERS
    TEMPORARY TABLESPACE temp	
    QUOTA 500M ON SHOP_PDB_USERS;
grant prch_manager to pm1;

CREATE USER analytic1
    IDENTIFIED BY pas
    DEFAULT TABLESPACE SHOP_PDB_USERS
    TEMPORARY TABLESPACE temp	
    QUOTA 500M ON SHOP_PDB_USERS;
grant analytic to analytic1;