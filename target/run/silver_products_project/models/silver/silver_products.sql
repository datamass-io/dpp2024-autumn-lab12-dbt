create or replace view `jaws`.`silver_products`
  
  
  as
    -- models/silver/silver_products.sql
WITH products AS (
    SELECT * FROM `jaws`.`stg_products`
)

SELECT
    *
FROM products
