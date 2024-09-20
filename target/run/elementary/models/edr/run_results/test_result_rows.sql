
  
    

        create or replace transient table NBA.dbt_parker_elementary.test_result_rows
         as
        (-- indexes are not supported in all warehouses, relevant to postgres only


-- depends_on: NBA.dbt_parker_elementary.elementary_test_results
select * from (
            select
            
                
        cast('this_is_just_a_long_dummy_string' as varchar) as elementary_test_results_id

,
                
        cast('this_is_just_a_long_dummy_string' as varchar) as result_row

,
                cast('2091-02-17' as timestamp) as detected_at

,
                cast('2091-02-17' as timestamp) as created_at


        ) as empty_table
        where 1 = 0
        );
      
  