{{ config(
    alias="person", enabled = true
) }}

select 
*
from {{source ('RAW_CSV','person')}} --source