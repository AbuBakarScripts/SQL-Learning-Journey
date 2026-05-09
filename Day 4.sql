---- LEFT JOIN
SELECT product_name, order_id
FROM production.products
LEFT JOIN sales.order_items
ON products.product_id = order_items.product_id
order by order_id;

--product_name, order_id, order_date, item_id
--left
SELECT product_name, order_items.order_id
FROM production.products
LEFT JOIN sales.order_items
ON products.product_id = order_items.product_id
LEFT JOIN sales.orders
ON orders.order_id = order_items.order_id

--RIGHT JOIN

select p.product_name,
	oi.order_id
	from
	sales.order_items oi
right join production.products p
	on p.product_id=oi.product_id
	order by order_id;

--- FULL OUTER JOIN












--CROSS JOIN

SELECT *
FROM production.products
cross join sales.stores;

SELECT *
FROM production.products
CROSS JOIN sales.order_items

select *
from sales.staffs t1
join sales.staffs t2
on t1.staff_id = t2.manager_id;

select emp.first_name + ' ' + emp.last_name as staff_name,mng.first_name + ' ' + mng.last_name as manager_name
from sales.staffs emp
join sales.staffs mng
on emp.manager_id = mng.staff_id;

-- SELF JOIN (find customers name who live in the same city)
select 
	c1.first_name + ' ' + c1.last_name as first_cust,
	c2.first_name + ' ' + c2.last_name as Sec_customer,
	c1.city as first_cust_city,
	c2.city as sec_cust_city
from sales.customers as c1
join sales.customers as c2
on c1.customer_id < c2.customer_id
	and c1.city = c2.city
order by c1.city;

