
  
    

        create or replace transient table NBA.dbt_parker_staging.nba_player_salaries
         as
        (WITH source AS (
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
        );
      
  