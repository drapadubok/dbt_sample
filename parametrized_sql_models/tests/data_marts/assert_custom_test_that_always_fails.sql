SELECT *
FROM {{ ref('aggregate_mart') }}
WHERE customer_id != 'should_never_happen'
