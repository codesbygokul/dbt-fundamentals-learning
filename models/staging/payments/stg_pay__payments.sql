select
    o_orderkey as order_id,
    o_orderstatus as status,
    o_totalprice / 100 as amount,
    o_orderdate as created_at
from {{ source('analytics', 'orders') }} payments