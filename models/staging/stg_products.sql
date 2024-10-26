-- models/staging/products/stg_products.sql
WITH source_data AS (
    SELECT *
    FROM {{ source('jaws', 'bronze_products') }}
)
SELECT * FROM source_data