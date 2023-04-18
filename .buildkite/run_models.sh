dbt run-operation fivetran_utils.drop_schemas --target "$db"
dbt run-operation fivetran_utils.drop_schemas_automation --target "$db"
