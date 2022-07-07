{{
    config(
      re_data_monitored=true,
      re_data_time_filter='event_ts',
    )
}}

WITH canada AS (

    SELECT 
    stg_locker_events.source,
    stg_locker_events.wo_no,
    stg_locker_events.event_ts,
    stg_locker_events.event_code,
    stg_locker_events.slot_id,
    stg_locker_events.locker_count,
    stg_locker_events.slot_size,
    stg_locker_events.courier_id,
    stg_locker_events.courier_company_id,
    stg_locker_events.drop_off_code,
    stg_locker_events.pup_address,
    stg_locker_events.pup_city,
    stg_locker_events.pup_country,
    stg_locker_events.pup_country_code,
    stg_locker_events.pup_postcode,
    stg_locker_events.pup_display_name,
    stg_locker_events.pup_name,
    stg_locker_events.pup_type,
    stg_som_so_transactions.so_no,
    stg_som_so_transactions.delivery_method,
    stg_som_so_transactions.status,
    stg_som_so_transactions.store,
    stg_som_so_transactions.shipping_bu


    FROM {{ ref('stg_locker_events') }} AS stg_locker_events

    JOIN {{ ref('stg_som_so_transactions')}} AS stg_som_so_transactions ON stg_locker_events.wo_no = stg_som_so_transactions.wo_no

    WHERE pup_country_code = 'CA'

)

SELECT * FROM canada