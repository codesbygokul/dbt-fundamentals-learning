  select 
    c_custkey as customer_id, 
    c_name as Customer_name 
  from 
    {{ source('analytics', 'customer') }}
