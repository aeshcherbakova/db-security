-- view connection info
SELECT
SYS_CONTEXT('USERENV','CON_NAME') AS con_name,
SYS_CONTEXT('USERENV','CON_ID') AS con_id,
SYS_CONTEXT('USERENV','DB_NAME') AS db_name
FROM dual;

-- view current container name
SELECT SYS_CONTEXT('USERENV', 'CON_NAME')
FROM dual;

-- view services
SELECT name, pdb
FROM v$services;

-- view all users
select username from dba_users;






CREATE USER testuser1 
    IDENTIFIED BY password1 
    DEFAULT TABLESPACE users 
    QUOTA 100M ON users 
    TEMPORARY TABLESPACE temp
	CONTAINER=CURRENT;

ALTER USER testuser1 quota unlimited on USERS;
	
	
GRANT
	create session, 
	create table,
	alter any table,
	backup any table,
	delete any table,
	drop any table,
	insert any table,
	read any table,
	select any table,
	update any table,
	create sequence
	to testuser1
	CONTAINER=CURRENT; 



	
	
-- Для коннекта:
/ as sysdba
ALTER SESSION SET CONTAINER=XEPDB1;

testuser1/password1@"localhost:1521/xepdb1"
shop_admin/shop_admin_pas@"localhost:1521/shop_pdb"



-- view current user privileges
SELECT * FROM USER_SYS_PRIVS;

-- view all tables
select * FROM user_tables;





-- alter user shop_admin 
-- 	default tablespace users     не сработало
-- 	quota 100M on users
-- 	temporary tablespace temp;



SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

