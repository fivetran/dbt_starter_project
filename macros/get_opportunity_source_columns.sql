{% macro get_opportunity_source_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "opportunity_id", "datatype": dbt_utils.type_string()},
    {"name": "source", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
