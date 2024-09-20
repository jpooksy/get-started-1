
  
    

        create or replace transient table NBA.dbt_parker_staging.nba_player_info
         as
        (WITH source AS (
    SELECT 
        person_id AS player_id,
        first_name,
        last_name,
        team_name,
        position,
        height,
        weight
    FROM 
        NBA.PUBLIC.COMMON_PLAYER_INFO
)

SELECT 
    *
FROM
    source
        );
      
  