create user hrs NO AUTHENTICATION;

grant 
  create session,
  create table,
  unlimited tablespace 
to hrs;

create table hrs.emp (
  id number(3, 0),
  name varchar2(20) NOT NULL,
  surname varchar2(20) NOT NULL,
  phone varchar2(16),
  job varchar2(20) NOT NULL,
  salary number(6, 0) NOT NULL,
  CONSTRAINT customer_pk PRIMARY KEY (id)
);

create public synonym emp for hrs.emp;

create role hr;
grant create session to hr;
grant select on emp  to hr;
alter user hrs quota 100M on shop_pdb_users;


CREATE USER hr1
    IDENTIFIED BY pas
    DEFAULT TABLESPACE SHOP_PDB_USERS
    TEMPORARY TABLESPACE temp 
    QUOTA 500M ON SHOP_PDB_USERS;
grant hr to hr1;

insert into emp values (1, 'Ivan', 'Ivanov', '89998887766', 'accountant', 60000);
insert into emp values (2, 'Petr', 'Petrov', '80001112233', 'manager1', 50000);
insert into emp values (3, 'Oleg', 'Olegov', '83334445566', 'manager2', 100000);

