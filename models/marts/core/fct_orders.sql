with orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (

    select * from {{ ref('stg_payments') }}

),

customer_orders_payments as (

    select
        order_id,
        customer_id,
        payments.amount
    from orders
    left join payments using (order_id)
)

select * from customer_orders_payments