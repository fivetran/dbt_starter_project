
with base as (

    select * 
    from {{ ref('stg_lever__panel_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_lever__panel_tmp')),
                staging_columns=get_panel_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        _fivetran_synced,
        canceled_at,
        created_at,
        creator_id as creator_user_id,
        'end' as last_interview_ends_at,
        external_url,
        {# externally_managed as is_externally_managed, #}
        feedback_reminder as feedback_reminder_frequency,
        id as panel_id,
        note,
        stage_id,
        start as first_interview_starts_at,
        timezone
        
    from fields
)

select * from final
