{{config(
    materialized="table",
    tags=["user_facing"],
    schema=var('customer_id')
)}}

{{ aggregate_mart(var('version'), var('customer_id'), ref('source_model')) }}
