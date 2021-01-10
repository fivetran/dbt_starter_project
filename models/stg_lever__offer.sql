
with base as (

    select * 
    from {{ ref('stg_lever__offer_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_lever__offer_tmp')),
                staging_columns=get_offer_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        _fivetran_synced,
        created_at,
        creator_id as creator_user_id,
        id as offer_id,
        status
        
    from fields
)

select * from final
