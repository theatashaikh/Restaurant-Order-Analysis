-- View the order_details table. What is the date range of the table?
select 
	min(order_date) min_date,
    max(order_date) max_date
from order_details;

-- How many orders were made within this date range?
select count(distinct order_id) total_orders
from order_details;
 
-- How many items were ordered within this date range?
select count(*) total_orders
from order_details;

-- Which orders had the most number of items?
select order_id, count(item_id) total_items
from order_details
group by order_id
order by total_items desc;

-- How many orders had more than 12 items?
select count(*) num_rows_with_more_than_12_items
from (
	select order_id, count(item_id) total_items
	from order_details
	group by order_id
	having count(item_id) > 12
) as order_by_total_items

