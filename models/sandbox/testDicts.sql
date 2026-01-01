{{ config(
  enabled=false
) }}
{%- set dicts = {
    'key1' : 'val1',
    'key2' : 'val2'
}-%}

{{dicts['key1']}} is a part of {{dicts['key2']}}
