select
    id AS payment_id,
    orderid AS order_id,
    paymentmethod,
    status,
    amount,
    created
from {{ source('stripe', 'payment') }}