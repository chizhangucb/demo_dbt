WITH source_store_sales as (
    SELECT * FROM {{ source("SNOWFLAKE_SAMPLE_DATA", "STORE_SALES") }}
), 

final AS (
    SELECT * FROM source_store_sales
)

SELECT * FROM final