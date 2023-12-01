        {{ dbt_utils.get_url_parameter('click_uri', 'utm_source') }} as utm_source,
        {{ dbt_utils.get_url_parameter('click_uri', 'utm_medium') }} as utm_medium,
        {{ dbt_utils.get_url_parameter('click_uri', 'utm_campaign') }} as utm_campaign,
        {{ dbt_utils.get_url_parameter('click_uri', 'utm_content') }} as utm_content,
        {{ dbt_utils.get_url_parameter('click_uri', 'utm_term') }} as utm_term
