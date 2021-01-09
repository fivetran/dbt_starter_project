{% macro get_posting_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "categories_commitment", "datatype": dbt_utils.type_string()},
    {"name": "categories_department", "datatype": dbt_utils.type_string()},
    {"name": "categories_level", "datatype": dbt_utils.type_string()},
    {"name": "categories_location", "datatype": dbt_utils.type_string()},
    {"name": "categories_team", "datatype": dbt_utils.type_string()},
    {"name": "content_closing", "datatype": dbt_utils.type_string()},
    {"name": "content_closing_html", "datatype": dbt_utils.type_string()},
    {"name": "content_description", "datatype": dbt_utils.type_string()},
    {"name": "content_description_html", "datatype": dbt_utils.type_string()},
    {"name": "created_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "creator_id", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "owner_id", "datatype": dbt_utils.type_string()},
    {"name": "requisition_code", "datatype": dbt_utils.type_string()},
    {"name": "state", "datatype": dbt_utils.type_string()},
    {"name": "text", "datatype": dbt_utils.type_string()},
    {"name": "updated_at", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
