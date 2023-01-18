
-- сумма покупок конкретного клиента
select sum(g.price*od.count*(1-s.percent/100)) as result
    from       customer       c
    inner join orders         o on c.id = o.customer_id
    inner join order_detail  od on o.id = od.order_id
    inner join saleV          s on o.sale_id = s.id
    inner join goodV          g on od.good_id = g.id
    where c.name = 'Ivan';



-- добавить новый заказ в таблицу orders
declare customer_id_v number(1,0);
        sale_id_v number(2,0);
        purchase_sum_v number(7,0);
begin
    select id 
        into customer_id_v
        from customer 
        where surname = 'Ivanov';
        
    select sum(g.price*od.count*(1-s.percent/100))
        into purchase_sum_v
        from       customer       c
        inner join orders         o on c.id = o.customer_id
        inner join order_detail  od on o.id = od.order_id
        inner join sale           s on o.sale_id = s.id
        inner join good           g on od.good_id = g.id
        where c.id = customer_id_v;
    
    select id
        into sale_id_v
        from sale
        where min_sum = (
                        select max(min_sum) as mms
                        from sale
                        where min_sum <= purchase_sum_v)
            and SYSDATE between sale.date_from and sale.date_to;
    
    insert into orders (id, "date", customer_id, sale_id) values (
        (select max(id) + 1 from orders),
        SYSDATE,
        customer_id_v,
        sale_id_v);
end;

