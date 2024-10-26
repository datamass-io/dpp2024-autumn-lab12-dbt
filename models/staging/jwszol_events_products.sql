-- models/joined_events_products.sql

WITH users AS (
    SELECT *
    FROM {{ source('jaws', 'bronze_users') }}
),

events AS (
    SELECT *
    FROM {{ source('jaws', 'bronze_events') }}
),

joined_df AS (
    SELECT
        users.user_id,
        users.email,
        events.device,
        events.traffic_source,
        events.event_previous_timestamp
    FROM users
    JOIN events ON users.user_id = events.user_id
)

SELECT *
FROM joined_df
ORDER BY email DESC
