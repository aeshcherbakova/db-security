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

-- view current user privileges
SELECT * FROM USER_SYS_PRIVS;

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
shop_main_admin/pas@"localhost:1521/shop_pdb"


-- view all tables
select * FROM user_tables;


insert into customer (name, surname, phone) 
	values ('Yan', 'Portnov', '91115556655');
delete from customer where id=45;
update customer set name = 'Max' where id=1;



-- all users
SELECT * FROM all_users
ORDER BY created;

 --Список системных привилегий для ролей
SELECT * FROM ROLE_SYS_PRIVS; 


--Привилегии на таблицы для ролей
SELECT * FROM ROLE_TAB_PRIVS;


--Роли, доступные текущему пользователю
SELECT * FROM USER_ROLE_PRIVS;


--Объектные привилегии доступные текущему пользователю
SELECT * FROM USER_TAB_PRIVS_RECD;


--Системные роли, доступные определенному пользователю
SELECT * FROM  DBA_ROLE_PRIVS WHERE GRANTEE = 'User_Name';

--Отмена привилегий
REVOKE CREATE VIEW FROM User_Name;
REVOKE INSERT ON test_regexp FROM User_Name;

--Отнять роль у пользователя
REVOKE Role_Name FROM User_Name;


--Удаление роли
DROP ROLE Role_Name;

--Удаление пользователя
DROP USER User_Name;


--  посмотреть все таблицы, к которым предоставлен доступ
SELECT owner, table_name
  FROM all_tables where owner = 'SHOP_MAIN_ADMIN';





-- dropping foreign keys and tables if needed

-- select constraint_name
-- from user_constraints
-- where table_name = 'GOOD'
--   and constraint_type = 'R';

-- alter table good drop constraint SYS_C007545;
-- drop table category;