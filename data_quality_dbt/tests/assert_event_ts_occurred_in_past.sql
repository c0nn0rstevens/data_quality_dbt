WITH

locker_events AS (
    SELECT * FROM {{ ref('stg_locker_events')}}
)

SELECT * FROM locker_events
WHERE event_ts > CURRENT_TIMESTAMP()