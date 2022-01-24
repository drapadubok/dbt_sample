{% macro aggregate_mart(version, customer_id, source_table_ref) %}

SELECT
    customer_id,
    event_type,
    count(*) as events_cnt,
    sum(revenue_metric) as revenue,
    '{{ version }}' as mart_version
FROM {{ source_table_ref }}
WHERE customer_id = '{{ customer_id }}'
GROUP BY customer_id, event_type

{% endmacro %}
