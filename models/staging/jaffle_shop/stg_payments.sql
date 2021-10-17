select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    -- amount is stored in cents, convert it to dollars
    ---original logic before macro was amount / 100 as amount
    {{ cents_to_dollars('payment_amount', 4 ) }} as amount,
    created as created_at
    from `key-acre-326416.stripe_payments.stripe_payments`