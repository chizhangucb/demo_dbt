
  create or replace  view DEMO_DB.PUBLIC.snowflake_sample_data_store_sales  as (
    WITH source_store_sales as (
    SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF10TCL.STORE_SALES
), 

final AS (
    SELECT * FROM source_store_sales
)

SELECT * FROM final
  );
