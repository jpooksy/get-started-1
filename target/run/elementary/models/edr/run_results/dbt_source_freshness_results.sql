-- back compat for old kwarg name
  
  begin;
    
        
            
            
        
    

    

    merge into NBA.dbt_parker_elementary.dbt_source_freshness_results as DBT_INTERNAL_DEST
        using NBA.dbt_parker_elementary.dbt_source_freshness_results__dbt_tmp as DBT_INTERNAL_SOURCE
        on (
                DBT_INTERNAL_SOURCE.source_freshness_execution_id = DBT_INTERNAL_DEST.source_freshness_execution_id
            )

    
    when matched then update set
        "SOURCE_FRESHNESS_EXECUTION_ID" = DBT_INTERNAL_SOURCE."SOURCE_FRESHNESS_EXECUTION_ID","UNIQUE_ID" = DBT_INTERNAL_SOURCE."UNIQUE_ID","MAX_LOADED_AT" = DBT_INTERNAL_SOURCE."MAX_LOADED_AT","SNAPSHOTTED_AT" = DBT_INTERNAL_SOURCE."SNAPSHOTTED_AT","GENERATED_AT" = DBT_INTERNAL_SOURCE."GENERATED_AT","CREATED_AT" = DBT_INTERNAL_SOURCE."CREATED_AT","MAX_LOADED_AT_TIME_AGO_IN_S" = DBT_INTERNAL_SOURCE."MAX_LOADED_AT_TIME_AGO_IN_S","STATUS" = DBT_INTERNAL_SOURCE."STATUS","ERROR" = DBT_INTERNAL_SOURCE."ERROR","COMPILE_STARTED_AT" = DBT_INTERNAL_SOURCE."COMPILE_STARTED_AT","COMPILE_COMPLETED_AT" = DBT_INTERNAL_SOURCE."COMPILE_COMPLETED_AT","EXECUTE_STARTED_AT" = DBT_INTERNAL_SOURCE."EXECUTE_STARTED_AT","EXECUTE_COMPLETED_AT" = DBT_INTERNAL_SOURCE."EXECUTE_COMPLETED_AT","INVOCATION_ID" = DBT_INTERNAL_SOURCE."INVOCATION_ID","WARN_AFTER" = DBT_INTERNAL_SOURCE."WARN_AFTER","ERROR_AFTER" = DBT_INTERNAL_SOURCE."ERROR_AFTER","FILTER" = DBT_INTERNAL_SOURCE."FILTER"
    

    when not matched then insert
        ("SOURCE_FRESHNESS_EXECUTION_ID", "UNIQUE_ID", "MAX_LOADED_AT", "SNAPSHOTTED_AT", "GENERATED_AT", "CREATED_AT", "MAX_LOADED_AT_TIME_AGO_IN_S", "STATUS", "ERROR", "COMPILE_STARTED_AT", "COMPILE_COMPLETED_AT", "EXECUTE_STARTED_AT", "EXECUTE_COMPLETED_AT", "INVOCATION_ID", "WARN_AFTER", "ERROR_AFTER", "FILTER")
    values
        ("SOURCE_FRESHNESS_EXECUTION_ID", "UNIQUE_ID", "MAX_LOADED_AT", "SNAPSHOTTED_AT", "GENERATED_AT", "CREATED_AT", "MAX_LOADED_AT_TIME_AGO_IN_S", "STATUS", "ERROR", "COMPILE_STARTED_AT", "COMPILE_COMPLETED_AT", "EXECUTE_STARTED_AT", "EXECUTE_COMPLETED_AT", "INVOCATION_ID", "WARN_AFTER", "ERROR_AFTER", "FILTER")

;
    commit;