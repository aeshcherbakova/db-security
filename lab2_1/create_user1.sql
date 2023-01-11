
-- / as sysbda

ALTER SESSION SET CONTAINER=shop_pdb;


CREATE USER shop_user1 
    IDENTIFIED BY shop_user1_pas
    TEMPORARY TABLESPACE temp
	CONTAINER=CURRENT;
	
	
GRANT
	create session, 
	select any table,
	insert any table,
	update any table,
	delete any table,
to shop_user1;