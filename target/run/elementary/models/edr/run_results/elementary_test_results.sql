-- back compat for old kwarg name
  
  begin;
    
        
            
            
        
    

    

    merge into NBA.dbt_parker_elementary.elementary_test_results as DBT_INTERNAL_DEST
        using NBA.dbt_parker_elementary.elementary_test_results__dbt_tmp as DBT_INTERNAL_SOURCE
        on (
                DBT_INTERNAL_SOURCE.id = DBT_INTERNAL_DEST.id
            )

    
    when matched then update set
        "ID" = DBT_INTERNAL_SOURCE."ID","DATA_ISSUE_ID" = DBT_INTERNAL_SOURCE."DATA_ISSUE_ID","TEST_EXECUTION_ID" = DBT_INTERNAL_SOURCE."TEST_EXECUTION_ID","TEST_UNIQUE_ID" = DBT_INTERNAL_SOURCE."TEST_UNIQUE_ID","MODEL_UNIQUE_ID" = DBT_INTERNAL_SOURCE."MODEL_UNIQUE_ID","INVOCATION_ID" = DBT_INTERNAL_SOURCE."INVOCATION_ID","DETECTED_AT" = DBT_INTERNAL_SOURCE."DETECTED_AT","CREATED_AT" = DBT_INTERNAL_SOURCE."CREATED_AT","DATABASE_NAME" = DBT_INTERNAL_SOURCE."DATABASE_NAME","SCHEMA_NAME" = DBT_INTERNAL_SOURCE."SCHEMA_NAME","TABLE_NAME" = DBT_INTERNAL_SOURCE."TABLE_NAME","COLUMN_NAME" = DBT_INTERNAL_SOURCE."COLUMN_NAME","TEST_TYPE" = DBT_INTERNAL_SOURCE."TEST_TYPE","TEST_SUB_TYPE" = DBT_INTERNAL_SOURCE."TEST_SUB_TYPE","TEST_RESULTS_DESCRIPTION" = DBT_INTERNAL_SOURCE."TEST_RESULTS_DESCRIPTION","OWNERS" = DBT_INTERNAL_SOURCE."OWNERS","TAGS" = DBT_INTERNAL_SOURCE."TAGS","TEST_RESULTS_QUERY" = DBT_INTERNAL_SOURCE."TEST_RESULTS_QUERY","OTHER" = DBT_INTERNAL_SOURCE."OTHER","TEST_NAME" = DBT_INTERNAL_SOURCE."TEST_NAME","TEST_PARAMS" = DBT_INTERNAL_SOURCE."TEST_PARAMS","SEVERITY" = DBT_INTERNAL_SOURCE."SEVERITY","STATUS" = DBT_INTERNAL_SOURCE."STATUS","FAILURES" = DBT_INTERNAL_SOURCE."FAILURES","TEST_SHORT_NAME" = DBT_INTERNAL_SOURCE."TEST_SHORT_NAME","TEST_ALIAS" = DBT_INTERNAL_SOURCE."TEST_ALIAS","RESULT_ROWS" = DBT_INTERNAL_SOURCE."RESULT_ROWS","FAILED_ROW_COUNT" = DBT_INTERNAL_SOURCE."FAILED_ROW_COUNT"
    

    when not matched then insert
        ("ID", "DATA_ISSUE_ID", "TEST_EXECUTION_ID", "TEST_UNIQUE_ID", "MODEL_UNIQUE_ID", "INVOCATION_ID", "DETECTED_AT", "CREATED_AT", "DATABASE_NAME", "SCHEMA_NAME", "TABLE_NAME", "COLUMN_NAME", "TEST_TYPE", "TEST_SUB_TYPE", "TEST_RESULTS_DESCRIPTION", "OWNERS", "TAGS", "TEST_RESULTS_QUERY", "OTHER", "TEST_NAME", "TEST_PARAMS", "SEVERITY", "STATUS", "FAILURES", "TEST_SHORT_NAME", "TEST_ALIAS", "RESULT_ROWS", "FAILED_ROW_COUNT")
    values
        ("ID", "DATA_ISSUE_ID", "TEST_EXECUTION_ID", "TEST_UNIQUE_ID", "MODEL_UNIQUE_ID", "INVOCATION_ID", "DETECTED_AT", "CREATED_AT", "DATABASE_NAME", "SCHEMA_NAME", "TABLE_NAME", "COLUMN_NAME", "TEST_TYPE", "TEST_SUB_TYPE", "TEST_RESULTS_DESCRIPTION", "OWNERS", "TAGS", "TEST_RESULTS_QUERY", "OTHER", "TEST_NAME", "TEST_PARAMS", "SEVERITY", "STATUS", "FAILURES", "TEST_SHORT_NAME", "TEST_ALIAS", "RESULT_ROWS", "FAILED_ROW_COUNT")

;
    commit;