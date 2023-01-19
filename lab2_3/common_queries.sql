-- Типичные запросы к базе данных для разных категорий пользователей, 
-- которые регулярно используются при её эксплуатации;


-- 1) Добавить нового клиента (client_manager)
insert into customer values 
	((select max(id) + 1 from customer),
		'Egor', 'Egorov', '80001112233');

-- 2) Изменить информацию о товаре, например, продлить срок действия цены (prch_manager)
update good
	set date_to = (select date_to from good where id = 1) + 30
	where name = 'apple';

-- 3) Вычислить сумму проданных товаров из каждой категории (analytic)
select c.name, sum(count*price) as sum
    from       order_detail  od
    inner join good           g on od.good_id = g.id
    inner join category       c on g.category_id = c.id
    group by c.name;

-- 4) Вычислить сумму продаж за определенное время (accounting)
select 
    sum(g.price*od.count*(1-s.percent/100)) as result
from       
    orders                    o
    inner join order_detail  od on o.id = od.order_id
    inner join saleV          s on o.sale_id = s.id
    inner join good           g on od.good_id = g.id
    where o."date" between '01.01.23' and '31.01.23';

-- 5) Вычислить сумму покупок клиента (client_manager)
select 
	sum(g.price*od.count*(1-s.percent/100)) as result
from       customer       c
    inner join orders         o on c.id = o.customer_id
    inner join order_detail  od on o.id = od.order_id
    inner join saleV          s on o.sale_id = s.id
    inner join goodV          g on od.good_id = g.id
    where c.surname = 'Ivanov';


