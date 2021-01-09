{% macro get_stage_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "text", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
