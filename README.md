# Intercom ([docs](https://dbt-intercom.netlify.app/))

This package models [Intercom] data from [Fivetran's connector](https://fivetran.com/docs/applications/intercom). It uses data in the format described by [this ERD](https://docs.google.com/presentation/d/1K3HTGqNQ-neUNeTtjJq42RHBV68_4FuXFp8X81zJ5Xo/edit#slide=id.p).

The main focus of this package is to enable users to better understand and recognize their responsiveness and effectiveness in relation to 
customer conversations via Intercom. You can easily gain insights from multiple conversations
with customers to determine and descover how your admins are performing, customer sentiment from conversations via the Intercom ranking functionality, 
and gain valuable information through leveraging the contact and company models to enrich the fct models as you like.

## Compatibility
> Please be aware the [dbt_intercom](https://github.com/fivetran/dbt_intercom) and child [dbt_intercom_source](https://github.com/fivetran/dbt_intercom_source) packages will only work with [Intercom V2.0](https://developers.intercom.com/intercom-api-reference/v2.0/reference#introduction) or greater. 

## Models
This package contains transformation models, designed to work simultaneously with our [Intercom source package](https://github.com/fivetran/dbt_intercom_source). A depenedency on the source package is declared in this package's `packages.yml` file, so it will automatically download when you run `dbt deps`. The primary outputs of this package are described below. Intermediate models are used to create these output models.

| **model**                | **description**                                                                                                                                |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| [fct_intercom__admin_metrics](https://github.com/fivetran/dbt_intercom/blob/master/models/intercom__admin_metrics.sql)                   | Each record represents an individual admin, enriched with admin specific conversation aggregates. Such as, their total conversations, average rating, and median response times. |
| [dim_intercom__company](https://github.com/fivetran/dbt_intercom/blob/master/models/intercom__companies_enhanced.sql)                    | Each record represents a single company, enriched with data related to the company industry, monthly_spend, and user_count. This model can be joined to dim_intercom__contact via the company_id for additional enrichment. |
| [dim_intercom__contact](https://github.com/fivetran/dbt_intercom/blob/master/models/intercom__contacts_enhanced.sql)                     | Each record represents a single contact, enriched with data identifying the contacts role, if they are unsubscribed from your email list, last contacted information, and which company they belong to. This model can be joined to dim_intercom__conversations via the first_contact_author_id or last_contact_author_id. |
| [dim_intercom__conversation](https://github.com/fivetran/dbt_intercom/blob/master/models/intercom__conversations_enhanced.sql)           | Each record represents a single conversation, enriched with data from the multiple conversation parts which make up the conversation. The conversation parts provide relevant information such as who was assigned the conversation, who the conversation was with, the current conversation state, who closed the conversation, and the final conversation ratings from the customer. |
| [fct_intercom__conversation_metrics](https://github.com/fivetran/dbt_intercom/blob/master/models/intercom__conversations_metrics.sql)    | Each record represents a single row from intercom__conversations_enhanced, enriched with aggregates which determine time to first response, time to first close, and time to last close. **Please note**, currently Intercom V2.0 does not support API exposure to company defined business hours. As such, all time_to metrics are calculated in their entirety without subtracting out business hours. A feature ticket has been logged with Intercom to provide API exposure for business hours in a later release. |

## Installation Instructions
Check [dbt Hub](https://hub.getdbt.com/) for the latest installation instructions, or [read the dbt docs](https://docs.getdbt.com/docs/package-management) for more information on installing packages.

## Configuration
By default, this package looks for your Intercom data in the `intercom` schema of your [target database](https://docs.getdbt.com/docs/running-a-dbt-project/using-the-command-line-interface/configure-your-profile). 
If this is not where your Intercom data is, add the below configuration to your `dbt_project.yml` file. Additionally, as this package only works with Intercom V2.0 it is important that your Fivetran Intercom connector is on the most recent version. If you are unsure what version of the connector your are on, feel free to reach out to your customer success manager for more information.

```yml
# dbt_project.yml

...
config-version: 2

vars:
    connector_database: your_database_name
    connector_schema: your_schema_name s
```

This package allows users to add additional columns to the dim_company and/or dim_contact tables. 
Columns passed through must be present in the downstream source contact and/or company tables. See 
below for an example of how the passthrough columns should be configured within your `dbt_project.yml` file.

```yml
# dbt_project.yml

...
vars:
  intercom:
    dim_company_pass_through_columns: [company_custom_field_1, company_custom_field_2]
    dim_contact_pass_through_columns: [contact_custom_column]
  intercom_source:
    company_history_pass_through_columns: [company_custom_field_1, company_custom_field_2]
    contact_history_pass_through_columns: [contact_custom_column]
```

For additional configurations for the source models, visit the [Intercom source package](https://github.com/fivetran/dbt_intercom_source).

## Contributions and Future Considerations
Don't see a model or specific metric you would have liked to be included? Notice any bugs when installing 
and running the package? If so, we highly encourage and welcome contributions to this package! 
Please create issues or open PRs against `master`. Check out [this post](https://discourse.getdbt.com/t/contributing-to-a-dbt-package/657) 
on the best workflow for contributing to a package.

## Database support
This package has been tested on BigQuery, Snowflake and Redshift.
Coming soon -- compatibility with Spark

## Resources:
- Provide [feedback](https://www.surveymonkey.com/r/DQ7K7WW) on our existing dbt packages or what you'd like to see next
- Have questions, feedback, or need help? Book a time during our office hours [here](https://calendly.com/fivetran-solutions-team/fivetran-solutions-team-office-hours) or email us at solutions@fivetran.com
- Find all of Fivetran's pre-built dbt packages in our [dbt hub](https://hub.getdbt.com/fivetran/)
- Learn how to orchestrate dbt transformations with Fivetran [here](https://fivetran.com/docs/transformations/dbt)
- Learn more about Fivetran overall [in our docs](https://fivetran.com/docs)
- Check out [Fivetran's blog](https://fivetran.com/blog)
- Learn more about dbt [in the dbt docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the dbt blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
