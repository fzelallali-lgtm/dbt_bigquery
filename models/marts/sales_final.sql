SELECT 
  country,
  product_name,
  COUNT(order_id) AS total_orders,
  SUM(amount) as total_revenue,
  {{dynamic_partition('order_date','MONTH')}}

FROM {{ref('stg_sales')}}
GROUP BY 1,2,5
