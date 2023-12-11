# dbt_[package]_ads v0.x.x
[PR #]() includes the following updates: ## Bug Fixes - This package now leverages the new `google_ads_extract_url_parameter()` for use in parsing out url parameters. This was added to create special logic for Databricks instances not supported by `dbt_utils.get_url_parameter()`.
  - This macro will be replaced with the `fivetran_utils.extract_url_parameter()` in the next breaking change.

# dbt_starter_project v0.1.0
this was made