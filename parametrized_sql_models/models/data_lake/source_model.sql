{{config(
    materialized='table',
    tags=["datalake"]
)}}

with source_data as (
    select
        'test' as customer_id,
        'v1' as app_version,
        0 as revenue_metric,
        'click' as event_type
    union all
    select
        'test' as customer_id,
        'v1' as app_version,
        123 as revenue_metric,
        'purchase' as event_type
    union all
    select
        'c1' as customer_id,
        'v1' as app_version,
        0 as revenue_metric,
        'click' as event_type
    union all
    select
        'c1' as customer_id,
        'v1' as app_version,
        9.9 as revenue_metric,
        'purchase' as event_type
    union all
    select
        'c2' as customer_id,
        'v1' as app_version,
        0 as revenue_metric,
        'click' as event_type
    union all
    select
        'c3' as customer_id,
        'v1' as app_version,
        0 as revenue_metric,
        'click' as event_type
)
select * from source_data
