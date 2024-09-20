WITH source AS (
    SELECT 
        *
    FROM 
        NBA.PUBLIC.TEAMS
),

renamed AS (
    SELECT
        id as team_id,
        full_name,
        abbreviation as team_name_abbreviation,
        nickname,
        city,
        state,
        year_founded
    FROM
        source
)

SELECT 
    *
FROM
    renamed