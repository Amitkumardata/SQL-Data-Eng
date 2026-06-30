Practice Tasks:

customers(customer_id, name, city, country)
orders(order_id, customer_id, order_date, amount, status, updated_at)
products(product_id, product_name, category, price)
order_items(order_id, product_id, quantity)
source_orders(order_id, customer_id, amount, updated_at)
target_orders(order_id, customer_id, amount, updated_at)

Business Purpose:
Subqueries and CTEs help break complex SQL logic into smaller, testable steps.
  
Write these from scratch:
Find orders greater than the average order amount.
select 
  
Find customers who placed at least one order using IN.


  
Find customers who never placed an order using NOT EXISTS.

  
Find products that were never ordered.

  
Create a customer spend summary using a subquery in FROM.

  
Rewrite task 5 using a CTE.

  
Find customers with total spend greater than 10,000 using a CTE.

  
Find duplicate orders using a CTE.

  
Find the latest order date per customer using a CTE.

  
Find source orders newer than the latest target order timestamp.

  
Build a CTE called completed_orders.

  
Build a CTE called customer_revenue.

  
Join customer details to customer revenue.

  
Return high-value customers sorted by revenue.

  
Explain in comments what each CTE does.

Remember Forever:
Subquery = a query inside another query
CTE = a named temporary result inside one query

Use subqueries for small checks.
Use CTEs for multi-step business logic.

Production SQL should be readable, testable, and explainable.
  
  
Self-Test
Before calling this topic complete, answer these without looking:
What is a subquery?
What is a CTE?
When would you use a subquery instead of a CTE?
Why are CTEs useful in production SQL?
What does WITH do?
Why is NOT EXISTS often safer than NOT IN?
How can CTEs help debug a pipeline?
How would you find records newer than the latest loaded timestamp?
Can you rewrite a subquery as a CTE?
Can you explain your final query to a non-technical manager?
