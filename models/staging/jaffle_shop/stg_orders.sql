/**with 
orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from `key-acre-326416.jaffle_shop_customers.jaffle_shop_orders`


)

select * from orders
**/

select
    id as order_id,
    user_id as customer_id,
    order_date,
    status
from {{ source('jaffle_shop_customers', 'jaffle_shop_orders') }}



