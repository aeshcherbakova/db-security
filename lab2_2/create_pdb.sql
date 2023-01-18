-- / as sysdba

-- create pdb
-- https://ocptechnology.com/create-pluggable-database-oracle/
create pluggable database SHOP_PDB admin user shop_main_admin identified by pas
default tablespace SHOP_PDB_USERS
datafile 'C:\APP\ALEXM\PRODUCT\18.0.0\ORADATA\XE\SHOP_PDB\SHOP_PDB_USERS01.dbf' size 250m autoextend on
file_name_convert=('C:\APP\ALEXM\PRODUCT\18.0.0\ORADATA\XE\pdbseed','C:\APP\ALEXM\PRODUCT\18.0.0\ORADATA\XE\SHOP_PDB');

show pdbs;
alter pluggable database SHOP_PDB open;
show pdbs;

ALTER SESSION SET CONTAINER=shop_pdb;


GRANT
	all privileges
	to shop_main_admin
	CONTAINER=CURRENT;   

