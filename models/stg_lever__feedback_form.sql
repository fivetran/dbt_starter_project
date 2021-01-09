
with base as (

    select * 
    from {{ ref('stg_lever__feedback_form_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_lever__feedback_form_tmp')),
                staging_columns=get_feedback_form_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        _fivetran_synced,
        completed_at,
        created_at,
        creator_id as creator_user_id,
        deleted_at,
        id as feedback_form_id,
        instructions,
        interview_id,
        opportunity_id,
        score_system_value,
        template_id as template_field_id,
        text as form_title,
        type -- always = interview

    from fields
)

select * from final
