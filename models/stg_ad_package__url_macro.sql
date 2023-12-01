        {{ fivetran_utils.extract_url_parameter('click_uri', 'utm_source') }} as utm_source,
        {{ fivetran_utils.extract_url_parameter('click_uri', 'utm_medium') }} as utm_medium,
        {{ fivetran_utils.extract_url_parameter('click_uri', 'utm_campaign') }} as utm_campaign,
        {{ fivetran_utils.extract_url_parameter('click_uri', 'utm_content') }} as utm_content,
        {{ fivetran_utils.extract_url_parameter('click_uri', 'utm_term') }} as utm_term
