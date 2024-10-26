-- models/silver/silver_products.sql
WITH products AS (
    SELECT * FROM {{ ref('stg_products') }}
)

SELECT
    *
FROM products