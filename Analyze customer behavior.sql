-- Combine the menu_items and order_details tables into a single table
select *
from menu_items as mi
left outer join order_details as od
on mi.menu_item_id=od.item_id;

-- What were the least and most ordered items? 
select item_name, count(item_id) times_ordered
	from menu_items as mi
	left outer join order_details as od
	on mi.menu_item_id=od.item_id
group by item_name
order by times_ordered;

select item_name, count(item_id) times_ordered
	from menu_items as mi
	left outer join order_details as od
	on mi.menu_item_id=od.item_id
group by item_name
order by times_ordered desc;

-- What categories were they in?
select item_name, category, count(item_id) times_ordered
	from menu_items as mi
	left outer join order_details as od
	on mi.menu_item_id=od.item_id
group by item_name, category
order by times_ordered;

select item_name, category, count(item_id) times_ordered
	from menu_items as mi
	left outer join order_details as od
	on mi.menu_item_id=od.item_id
group by item_name, category
order by times_ordered desc;

-- What were the top 5 orders that spent the most money?
select order_id, sum(price) total_spent
	from menu_items as mi
	left outer join order_details as od
	on mi.menu_item_id=od.item_id
group by order_id
order by total_spent desc
limit 5;

-- View the details of the highest spend order. Which specific items were purchased?
select distinct item_name
	from menu_items as mi
	left outer join order_details as od
	on mi.menu_item_id=od.item_id
where order_id=440;

-- View the details of the top 5 highest spend orders
select *
from menu_items as mi
	left outer join order_details as od
	on mi.menu_item_id=od.item_id 
where order_id in (select * from top_five_biggest_spender);



