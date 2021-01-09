
with base as (

    select * 
    from {{ ref('stg_lever__panel_application_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_lever__panel_application_tmp')),
                staging_columns=get_panel_application_columns()
            )
        }}
        
    from base
),

final as (
    
    select *
    from fields
)

select * from final
