-- We assume that there should be no negative revenue for a given customer model, this can be generalized as "positive_value"
{% test positive_revenue(model, column_name) %}

select *
from {{ model }}
where {{ column_name }} < 0

{% endtest %}
