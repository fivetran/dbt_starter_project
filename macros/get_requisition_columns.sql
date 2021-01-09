{% macro get_requisition_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "backfill", "datatype": "boolean"},
    {"name": "compensation_band_currency", "datatype": dbt_utils.type_string()},
    {"name": "compensation_band_interval", "datatype": dbt_utils.type_string()},
    {"name": "compensation_band_max", "datatype": dbt_utils.type_string()},
    {"name": "compensation_band_min", "datatype": dbt_utils.type_string()},
    {"name": "created_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "creator_id", "datatype": dbt_utils.type_string()},
    {"name": "custom_field_agency_owner", "datatype": dbt_utils.type_string()},
    {"name": "custom_field_requisition_live_date", "datatype": dbt_utils.type_int()},
    {"name": "custom_field_sourcing_hm_owned", "datatype": "boolean"},
    {"name": "custom_field_target_hire_date", "datatype": dbt_utils.type_int()},
    {"name": "custom_field_top_funnel_target", "datatype": dbt_utils.type_int()},
    {"name": "employment_status", "datatype": dbt_utils.type_string()},
    {"name": "headcount_hired", "datatype": dbt_utils.type_string()},
    {"name": "headcount_infinite", "datatype": dbt_utils.type_string()},
    {"name": "headcount_total", "datatype": dbt_utils.type_string()},
    {"name": "hiring_manager_id", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "internal_notes", "datatype": dbt_utils.type_string()},
    {"name": "location", "datatype": dbt_utils.type_string()},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "owner_id", "datatype": dbt_utils.type_string()},
    {"name": "requisition_code", "datatype": dbt_utils.type_string()},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "team", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
