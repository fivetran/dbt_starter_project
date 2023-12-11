        {{ google_ads_extract_url_parameter('click_uri', 'utm_source') }} as utm_source,
        {{ google_ads_extract_url_parameter('click_uri', 'utm_medium') }} as utm_medium,
        {{ google_ads_extract_url_parameter('click_uri', 'utm_campaign') }} as utm_campaign,
        {{ google_ads_extract_url_parameter('click_uri', 'utm_content') }} as utm_content,
        {{ google_ads_extract_url_parameter('click_uri', 'utm_term') }} as utm_term
