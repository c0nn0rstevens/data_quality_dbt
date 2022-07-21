WITH stg_locker_events AS (
    SELECT *
    FROM {{ source('raw_solace_events', 'raw_solace__pupm_events') }}
)

SELECT * FROM stg_locker_events