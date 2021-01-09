{% macro get_feedback_form_field_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "code_language", "datatype": dbt_utils.type_string()},
    {"name": "currency", "datatype": dbt_utils.type_string()},
    {"name": "feedback_form_id", "datatype": dbt_utils.type_string()},
    {"name": "field_index", "datatype": dbt_utils.type_int()},
    {"name": "value_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "value_decimal", "datatype": dbt_utils.type_numeric()},
    {"name": "value_file_id", "datatype": dbt_utils.type_string()},
    {"name": "value_index", "datatype": dbt_utils.type_int()},
    {"name": "value_number", "datatype": dbt_utils.type_int()},
    {"name": "value_text", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
