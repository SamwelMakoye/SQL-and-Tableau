select distinct(o.pizza_id), sum(o.quantity)as total_orders, p.price as price,
sum(o.quantity)*p.price as total_sales
from order_details o
inner join pizzas p
on p.pizza_id = o.pizza_id
group by o.pizza_id,p.price
order by total_sales desc
limit 10;





