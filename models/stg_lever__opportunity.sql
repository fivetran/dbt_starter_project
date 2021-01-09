
with base as (

    select * 
    from {{ ref('stg_lever__opportunity_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_lever__opportunity_tmp')),
                staging_columns=get_opportunity_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        _fivetran_synced,
        archived_at,
        archived_reason_id,
        contact as contact_id,
        created_at,
        data_protection_contact_allowed as is_data_protection_contact_allowed, 
        data_protection_contact_expires_at,
        data_protection_store_allowed as is_data_protection_store_allowed,
        data_protection_store_expires_at,
        headline as contact_headline,
        id as opportunity_id, 
        is_anonymized,
        last_advanced_at,
        last_interaction_at,
        location as contact_location,
        name as contact_name,
        origin,
        owner_id as owner_user_id,
        snoozed_until,
        stage_id,
        updated_at

    from fields
)

select * from final