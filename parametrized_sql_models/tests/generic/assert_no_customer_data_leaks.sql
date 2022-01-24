-- We assume that there should be only one unique customer id in a given view
{% test unique_customer(model, column_name) %}

select
    count(distinct {{ column_name }})
from {{ model }}
having count(distinct {{ column_name }}) > 1

{% endtest %}
