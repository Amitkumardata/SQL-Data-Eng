Practice Task:
## Day 2: Window Functions - Ranking

orders(order_id, customer_id, order_date, amount, status, created_at)
products(product_id, product_name, category, price)
sales(product_id, category, sale_date, revenue)
customer_profiles_raw(customer_id, name, email, city, updated_at, ingested_at)
events(event_id, user_id, event_type, event_time, loaded_at)

Business Purpose:
Window ranking functions help select latest records, deduplicate data, and find top-N results inside groups.

Write these from scratch:
  
Add row numbers to orders by customer, newest first.

  
Find the latest order for each customer.

  
Find the first order for each customer.

  
Deduplicate events by event_id, keeping latest loaded_at.

  
Deduplicate customer profiles by customer_id, keeping latest updated_at.

  
Rank products by price within each category using RANK.

  
Rank products by price within each category using DENSE_RANK.

  
Find top 3 products by revenue in each category.

  
Find customers’ second most recent order.

  
Compare ROW_NUMBER, RANK, and DENSE_RANK on the same revenue data.

GROUP BY collapses rows.
Window functions keep rows.

ROW_NUMBER = pick one exact row.
RANK = tied values share rank, gaps appear.
DENSE_RANK = tied values share rank, no gaps.

For data engineering:
ROW_NUMBER is your tool for latest records and deduplication.
  

Self-Test
Before moving on, answer these without looking:
What problem do window functions solve?
What does PARTITION BY do?
What does ORDER BY do inside OVER?
Difference between ROW_NUMBER, RANK, and DENSE_RANK?
Why is ROW_NUMBER useful for deduplication?
Why should you add tie-breakers?
How do you find the latest record per customer?
How do you find the top 3 products per category?
Why doesn’t GROUP BY solve latest-record selection well?
Can you explain your deduplication query like you would in an interview?
