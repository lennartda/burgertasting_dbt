{# 
  JINJA (Compile-Time):
  Wir definieren eine Liste von Spaltennamen.
  Diese Liste existiert nur während dbt das SQL generiert.
#}
{% set cols = ['PersonID', 'PersonName'] %}

-- SQL (Run-Time):
-- Beginn des SELECT-Statements
select
{# 
  JINJA (Compile-Time):
  Wir iterieren über die Spaltenliste "cols".
  Pro Durchlauf wird ein Spaltenname in das SQL geschrieben.
#}
{% for col in cols %}
    {{ col }}{% if not loop.last %},{% endif %}
    {# 
      JINJA:
      Wenn dies NICHT der letzte Schleifendurchlauf ist,
      wird ein Komma ausgegeben, um gültiges SQL zu erzeugen.
    #}
{% endfor %}

-- SQL (Run-Time):
-- Quelle der Daten
from {{ ref('stg__person') }}
{# 
  JINJA + dbt:
  ref('persons') wird von dbt zur Laufzeit ersetzt durch
  den vollqualifizierten Tabellennamen und erzeugt
  gleichzeitig eine Abhängigkeit im dbt DAG.
#}

