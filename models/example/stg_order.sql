select
o.order_id,
c.customer_Name,
p.Product_ID,
p.Product_Name,
o.Quantity,
o.Order_Date
From
 raw.orders o
join {{ ref("stg_customers") }} c 
    On o.Customer_ID = c.Customer_ID
join raw.products p 
    on o.product_id = p.product_id