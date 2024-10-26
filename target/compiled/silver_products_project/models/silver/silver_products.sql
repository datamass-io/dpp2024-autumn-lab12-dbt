-- models/silver/silver_products.sql
WITH products AS (
    SELECT * FROM `jaws`.`stg_products`
)

SELECT
    *
FROM products