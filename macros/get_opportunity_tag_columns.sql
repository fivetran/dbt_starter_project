{% macro get_opportunity_tag_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "opportunity_id", "datatype": dbt_utils.type_string()},
    {"name": "tag", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
