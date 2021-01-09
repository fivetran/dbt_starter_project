{% macro get_application_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "archived_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "archived_reason_id", "datatype": dbt_utils.type_string()},
    {"name": "candidate_id", "datatype": dbt_utils.type_string()},
    {"name": "comments", "datatype": dbt_utils.type_string()},
    {"name": "company", "datatype": dbt_utils.type_string()},
    {"name": "created_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "opportunity_id", "datatype": dbt_utils.type_string()},
    {"name": "posting_hiring_manager_id", "datatype": dbt_utils.type_string()},
    {"name": "posting_id", "datatype": dbt_utils.type_string()},
    {"name": "posting_owner_id", "datatype": dbt_utils.type_string()},
    {"name": "referrer_id", "datatype": dbt_utils.type_string()},
    {"name": "requisition_for_hire_id", "datatype": dbt_utils.type_string()},
    {"name": "type", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
