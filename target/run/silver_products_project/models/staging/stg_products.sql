create or replace view `jaws`.`stg_products`
  
  
  as
    -- models/staging/products/stg_products.sql
WITH source_data AS (
    SELECT *
    FROM `jaws`.`bronze_products`
)
SELECT * FROM source_data