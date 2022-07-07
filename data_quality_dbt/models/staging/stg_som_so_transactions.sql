{{
    config(
      re_data_monitored=true,
      re_data_time_filter='time_window_from_ts',
    )
}}

SELECT * FROM {{ source('raw_som_transactions', 'raw_som__so_transactions') }}
ORDER BY DELIVERY_METHOD