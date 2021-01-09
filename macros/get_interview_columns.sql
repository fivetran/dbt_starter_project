{% macro get_interview_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "canceled_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "candidate_id", "datatype": dbt_utils.type_string()},
    {"name": "created_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "creator_id", "datatype": dbt_utils.type_string()},
    {"name": "date", "datatype": dbt_utils.type_timestamp()},
    {"name": "duration", "datatype": dbt_utils.type_int()},
    {"name": "feedback_reminder", "datatype": dbt_utils.type_string()},
    {"name": "gcal_event_url", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "location", "datatype": dbt_utils.type_string()},
    {"name": "note", "datatype": dbt_utils.type_string()},
    {"name": "opportunity_id", "datatype": dbt_utils.type_string()},
    {"name": "panel_id", "datatype": dbt_utils.type_string()},
    {"name": "stage_id", "datatype": dbt_utils.type_string()},
    {"name": "subject", "datatype": dbt_utils.type_string()},
    {"name": "timezone", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
