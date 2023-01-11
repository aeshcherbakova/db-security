-- category
insert into category (name) values ('fruit');
insert into category (name) values ('vegetables');
insert into category (name) values ('chocolate');
insert into category (name) values ('water');


-- vendor
insert into vendor (name, phone, address) values ('fruit vendor', '81234567788', 'Moscow');
insert into vendor (name, phone, address) values ('fruit and vegetables vendor', '81234568899', 'Krasnodar');
insert into vendor (name, phone, address) values ('chocolate vendor 1', '81112223344', 'Podolsk');
insert into vendor (name, phone) values ('chocolate vendor 2', '83334445566');
insert into vendor (name, phone) values ('water vendor 1', '89998887766');


-- customer
insert into customer (name, surname, phone) 
	values ('Ivan', 'Ivanov', '91115556677');
insert into customer (name, surname, phone) 
	values ('Petr', 'Petrov', '91115556688');
insert into customer (name, surname, phone) 
	values ('Kirill', 'Kirilenko', '91115556699');
insert into customer (name, surname, phone) 
	values ('Anton', 'Antonov', '91115556600');
insert into customer (name, surname, phone) 
	values ('Olga', 'Olegova', '91115556666');
insert into customer (name, surname, phone) 
	values ('Yan', 'Portnov', '91115556655');


declare 
	c_date_to   date := to_date('01-01-2023', 'dd-mm-yyyy');
	c_date_from date := to_date('01-01-2022', 'dd-mm-yyyy');
begin
	-- good
	insert into good (name, vendor_id, price, category_id, date_from, date_to) 
		values ('apple', 1, 30, 1, c_date_from, c_date_to);
	insert into good (name, vendor_id, price, category_id, date_from, date_to) 
		values ('banana', 1, 20, 1, c_date_from, c_date_to);
	insert into good (name, vendor_id, price, category_id, date_from, date_to) 
		values ('cucumber', 2, 25, 2, c_date_from, c_date_to);
	insert into good (name, vendor_id, price, category_id, date_from, date_to) 
		values ('alionka', 3, 70, 3, c_date_from, c_date_to);
	insert into good (name, vendor_id, price, category_id, date_from, date_to) 
		values ('alpen gold', 4, 70, 3, c_date_from, c_date_to);
	insert into good (name, vendor_id, price, category_id, date_from, date_to) 
		values ('sviatoy istochnik', 5, 50, 4, c_date_from, c_date_to);

	-- sale
	insert into sale (min_sum, percent, date_from, date_to) 
		values (0, 0.5, c_date_from, c_date_to);
	insert into sale (min_sum, percent, date_from, date_to) 
		values (30000, 1, c_date_from, c_date_to);
	insert into sale (min_sum, percent, date_from, date_to) 
		values (50000, 2, c_date_from, c_date_to);
	insert into sale (min_sum, percent, date_from, date_to) 
		values (100000, 5, c_date_from, c_date_to);
	insert into sale (min_sum, percent, date_from, date_to) 
		values (2000000, 7, c_date_from, c_date_to);
end;


-- orders
insert into orders ("date", customer_id, sale_id) 
    values (SYSDATE, 1, 1);
insert into orders ("date", customer_id, sale_id) 
    values (SYSDATE, 2, 1);
insert into orders ("date", customer_id, sale_id) 
    values (SYSDATE, 2, 1);


-- order_detail
insert into order_detail (good_id, count, order_id) 
	values (1, 5, 1);
insert into order_detail (good_id, count, order_id) 
	values (2, 10, 1);
insert into order_detail (good_id, count, order_id) 
	values (3, 2, 1);
insert into order_detail (good_id, count, order_id) 
	values (4, 7, 2);
insert into order_detail (good_id, count, order_id) 
	values (5, 1, 2);
insert into order_detail (good_id, count, order_id) 
	values (6, 2, 2);
insert into order_detail (good_id, count, order_id) 
	values (1, 3, 2);
insert into order_detail (good_id, count, order_id) 
	values (1, 20, 3);


