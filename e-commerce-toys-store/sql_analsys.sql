use toys_ecommerce_dataset;
SET SQL_SAFE_UPDATES = 0;

-- 1. yearly revenue and order trends
select 
year,
count(distinct order_id) as total_orders,
round(sum(price_usd),2) as total_revenue,
round(avg(price_usd),2) as avg_price
from orders
group by year 
order by year;


-- 2. Top products by revenue and quantity
select 
product_name,
product_id,
round(sum(price_usd),2) as total_revenue,
count(distinct order_id)
from products
left join orders 
on products.product_id = orders.primary_product_id
group by product_name,product_id
order by total_revenue desc;

-- 3. Customer life time value 
select 
user_id,
count(order_id) as total_orders,
round(sum(price_usd),2) as total_revenue,
min(created_at) as first_order_date,
max(created_at) as last_order_date
from orders
group by user_id
order by total_revenue desc
limit 10;


-- 4. Customer retention metrics
with customers_counts as (
select user_id,
count(order_id) as total_orders,
round(sum(price_usd),2) as total_revenue
from orders
group by user_id)
select 
case 
when total_orders = 1 then 'one time(new)'
when total_orders between 2 and 8 then 'repetive'
when total_orders > 8 then 'loyal'
end as customer_segment,
count(user_id) as number_of_customers,
round(count(user_id) * 100 / (select count(user_id) from customers_counts),2) as percentage
from customers_counts
group by customer_segment
order by percentage desc;


-- 5. Time between orders (repeat purchase)

with total_result as (with result as (SELECT
    user_id,
    order_id,
    created_at AS current_order_date,
    LEAD(created_at) OVER (
        PARTITION BY user_id
        ORDER BY created_at
    ) AS next_order_date,
    DATEDIFF(
        LEAD(created_at) OVER (PARTITION BY user_id ORDER BY created_at),
        created_at
    ) AS days_between_orders
FROM orders
ORDER BY user_id, created_at)
select user_id,order_id,current_order_date,next_order_date,days_between_orders from result
where days_between_orders is not null)
select avg(days_between_orders) as avg_days_between_orders from total_result;


-- 6. What is the trend in website sessions and order volume?
select
year(ws.created_at) as year_,
count(ws.website_session_id) as sessions,
count(order_id) as orders,
    ROUND(
        COUNT(DISTINCT o.order_id) * 100.0 /
        COUNT(DISTINCT ws.website_session_id),
        2
    ) AS conversion_rate_pct
from website_sessions ws
left join orders o
on ws.website_session_id = o.website_session_id
group by year_
order by year_;




-- 7. Which marketing channels have been most successful?
select 
utm_campaign,
utm_content,
count(website_session_id) as sessions 
from website_sessions
group by utm_campaign, utm_content;

-- --------------------------------







alter table orders
add column customer_type varchar(20);

-- Adding new col for customer segmentation
WITH customers_counts AS (
    SELECT 
        user_id,
        COUNT(order_id) AS total_orders,
        ROUND(SUM(price_usd), 2) AS total_revenue
    FROM orders
    GROUP BY user_id
)

UPDATE orders o
JOIN customers_counts cc
ON o.user_id = cc.user_id

SET o.customer_type = CASE 
    WHEN cc.total_orders = 1 THEN 'one time(new)'
    WHEN cc.total_orders BETWEEN 2 AND 8 THEN 'repeat'
    WHEN cc.total_orders > 8 THEN 'loyal'
END;

-- Adding some useful date cols
alter table orders
add column year int,
add column month varchar(20),
add column day int,
add column order_date varchar(20);

update orders
set 
year = year(created_at),
month = month(created_at),
day = day(created_at),
date = date(created_at);













