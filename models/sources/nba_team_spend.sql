WITH source AS (
    SELECT 
        *
    FROM 
        {{ source('PUBLIC', 'TEAM_SPEND') }}
),

renamed as (
    SELECT 
        team_id,
        team_city,
        team_name,
        full_name,
        year as season,
        total_spend as team_payroll,
        active_payroll,
        dead_payroll,
        luxury_tax_payroll,
        luxury_tax_space,
        luxury_tax_bill
    FROM 
        source
)

SELECT
    *
FROM
    renamed