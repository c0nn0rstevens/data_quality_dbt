{{
    config(
      re_data_monitored=true,
      re_data_time_filter='event_ts',
    )
}}

WITH stg_locker_events AS (
    SELECT *
    FROM {{ source('raw_solace_events', 'raw_solace__pupm_events') }}
)

SELECT * FROM stg_locker_events