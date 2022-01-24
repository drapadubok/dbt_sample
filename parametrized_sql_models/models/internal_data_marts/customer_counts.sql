{{config(
    materialized="view",
    tags=["internal"]
)}}

select *
from {{ ref('source_model') }}
