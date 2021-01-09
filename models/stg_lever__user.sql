
with base as (

    select * 
    from {{ ref('stg_lever__user_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_lever__user_tmp')),
                staging_columns=get_user_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        _fivetran_synced,
        access_role,
        created_at,
        deactivated_at,
        email,
        external_directory_id as external_directory_user_id,
        id as user_id,
        name as full_name

    -- username is just taken from the email
    from fields

    where not coalesce(_fivetran_deleted, false)
)

select * from final
