{{config(materialized='view')}}

SELECT 
      order_id,
      product_name,
      amount,
      country,
      order_date,
      {{dynamic_partition('order_date','MONTH')}} --dynamic partitionning
FROM `soy-coast-477114-g5.sales_dataset.raw_sales`