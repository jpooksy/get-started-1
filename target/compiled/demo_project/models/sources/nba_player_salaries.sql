WITH source AS (
    SELECT 
        player_id,
        player_name,
        salary,
        season
    FROM 
        NBA.PUBLIC.PLAYER_SALARIES
)

SELECT 
    *
FROM
    source