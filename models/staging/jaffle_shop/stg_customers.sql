/**with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from `key-acre-326416.jaffle_shop_customers.jaffle_shop_customers`

)

select * from customers**/

select 
    id as customer_id,
    first_name,
    last_name
from {{ source('jaffle_shop_customers', 'jaffle_shop_customers') }}