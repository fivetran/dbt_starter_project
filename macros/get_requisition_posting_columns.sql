{% macro get_requisition_posting_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "posting_id", "datatype": dbt_utils.type_string()},
    {"name": "requisition_id", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
