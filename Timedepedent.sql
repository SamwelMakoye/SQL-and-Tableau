select o.date, sum(od.quantity) from order_details od
inner join orders o
on od.order_id = o.order_id
group by o.date;





