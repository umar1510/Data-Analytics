select * from customer_shopping_behavior limit 20;

select gender, sum(revenue_usd) as revenue from customer_shopping_behavior group by gender ;

select customer_id, revenue_usd from customer_shopping_behavior 
where discount_applied = 'Yes' and revenue_usd >= (select avg(revenue_usd) from customer_shopping_behavior)


select item_purchased, avg(review_rating) as avg_rating from customer_shopping_behavior
group by item_purchased
order by avg(review_rating) desc

select shipping_type , Round( avg(revenue_usd),2) as amount from customer_shopping_behavior
group by shipping_type
order by amount desc;

select subscription_status, 
count(*) as total_customers,
avg(revenue_usd) as spending, 
sum(revenue_usd) as total_revenue
from customer_shopping_behavior
group by subscription_status
order by spending desc;


SELECT 
    item_purchased,
    (COUNT(CASE WHEN discount_applied = 'Yes' THEN 1 END) * 1.0 / COUNT(*))*100  AS total_count
FROM customer_shopping_behavior
GROUP BY item_purchased
order by total_count desc limit 5;

with customer_type as (
select customer_id,previous_purchases,
case 
when previous_purchases = 1 then 'New'
when previous_purchases between 2 and 10 then 'Returning'
else 'Loyal'
End as customer_segment
from customer_shopping_behavior
)

select customer_segment,count(*) as number_of_customers
from customer_type
group by customer_segment;



WITH ranked_items AS (
    SELECT 
        category,
        item_purchased,
        COUNT(*) AS purchase_count,
        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY COUNT(*) DESC
        ) AS rn
    FROM customer_shopping_behavior
    GROUP BY category, item_purchased
)
SELECT 
    category,
    item_purchased,
    purchase_count,
    rn
FROM ranked_items
WHERE rn <= 3;

select subscription_status, count(*) as total_count 
from customer_shopping_behavior
where previous_purchases > 5
group by  subscription_status 
order by total_count desc;

select age_group, sum(revenue_usd) as total_revenue from customer_shopping_behavior
group by age_group order by total_revenue desc;

ALTER TABLE customer_shopping_behavior
ADD COLUMN customer_type VARCHAR(20);

SET SQL_SAFE_UPDATES = 0;

UPDATE customer_shopping_behavior
SET customer_type = CASE
    WHEN previous_purchases = 1 THEN 'New'
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    WHEN previous_purchases > 10 THEN 'Loyal'
END;

SET SQL_SAFE_UPDATES = 1;

select * from customer_shopping_behavior limit 5;






