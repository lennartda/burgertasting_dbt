{% set variables = 'default' %}

select
    {% if variables == 'default' %}
        'its default' as result
    {% else %}
        'else' as result
    {% endif %}