-- View the menu_items table and write a query to find the number of items on the menu 
select count(distinct item_name) total_items
from menu_items;

-- What are the least and most expensive items on the menu?
select *
from menu_items
order by price;

select *
from menu_items
order by price desc;

-- How many Italian dishes are on the menu?

select count(*) total_italian_dishes
from menu_items
where category='Italian';

-- What are the least and most expensive Italian dishes on the menu?
select *
from menu_items
where category='Italian'
order by price;

select *
from menu_items
where category='Italian'
order by price desc;

-- How many dishes are in each category?
select category, count(category) total_dishes
from menu_items
group by category;

-- What is the average dish price within each category?
select category, avg(price) average_price 
from menu_items
group by category;




