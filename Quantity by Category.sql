select pt.category, sum(od.quantity) as total_orders_by_category
from pizzas p
left join pizza_type pt
on p.pizza_type_id = pt.pizza_type
inner join order_details od
on p.pizza_id = od.pizza_id
group by pt.category






