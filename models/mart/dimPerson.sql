select
{{ dbt_utils.generate_surrogate_key(['PersonName']) }},
*
from {{ ref('stg__person') }}