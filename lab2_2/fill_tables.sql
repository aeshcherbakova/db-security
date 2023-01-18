-- category
insert into category values (1, 'fruit');
insert into category values (2, 'vegetables');
insert into category values (3, 'chocolate');
insert into category values (4, 'water');


-- vendor
insert into vendor values (1, 'fruit vendor', '81234567788', 'Moscow');
insert into vendor values (2, 'fruit and vegetables vendor', '81234568899', 'Krasnodar');
insert into vendor values (3, 'chocolate vendor 1', '81112223344', 'Podolsk');
insert into vendor values (4, 'chocolate vendor 2', '83334445566', 'Minsk');
insert into vendor values (5, 'water vendor 1', '89998887766', 'Yaroslavl');


-- customer
insert into customer values (1, 'Ivan', 'Ivanov', '91115556677');
insert into customer values (2, 'Petr', 'Petrov', '91115556688');
insert into customer values (3, 'Kirill', 'Kirilenko', '91115556699');
insert into customer values (4, 'Anton', 'Antonov', '91115556600');
insert into customer values (5, 'Olga', 'Olegova', '91115556666');
insert into customer values (6, 'Yan', 'Portnov', '91115556655');


declare 
	c_date_to   date := to_date('01-01-2023', 'dd-mm-yyyy');
	c_date_from date := to_date('01-01-2022', 'dd-mm-yyyy');
begin
	-- good
	insert into good values (1, 'apple', 1, 30, 1, c_date_from, c_date_to);
	insert into good values (2, 'banana', 1, 20, 1, c_date_from, c_date_to);
	insert into good values (3, 'cucumber', 2, 25, 2, c_date_from, c_date_to);
	insert into good values (4, 'alionka', 3, 70, 3, c_date_from, c_date_to);
	insert into good values (5, 'alpen gold', 4, 70, 3, c_date_from, c_date_to);
	insert into good values (6, 'sviatoy istochnik', 5, 50, 4, c_date_from, c_date_to);

	-- sale
	insert into sale values (1, 0, 0.5, c_date_from, c_date_to);
	insert into sale values (2, 30000, 1, c_date_from, c_date_to);
	insert into sale values (3, 50000, 2, c_date_from, c_date_to);
	insert into sale values (4, 100000, 5, c_date_from, c_date_to);
	insert into sale values (5, 2000000, 7, c_date_from, c_date_to);
end;


-- orders
insert into orders values (1, SYSDATE, 1, 1);
insert into orders values (2, SYSDATE, 2, 1);
insert into orders values (3, SYSDATE, 2, 1);


-- order_detail
insert into order_detail values (1, 1, 5, 1);
insert into order_detail values (2, 2, 10, 1);
insert into order_detail values (3, 3, 2, 1);
insert into order_detail values (4, 4, 7, 2);
insert into order_detail values (5, 5, 1, 2);
insert into order_detail values (6, 6, 2, 2);
insert into order_detail values (7, 1, 3, 2);
insert into order_detail values (8, 1, 20, 3);
