{% macro all_data_mart(version, customer_id, source_table_ref) %}

SELECT
    *,
    '{{ version }}' as mart_version
FROM {{ source_table_ref }}
WHERE customer_id = '{{ customer_id }}'

{% endmacro %}
