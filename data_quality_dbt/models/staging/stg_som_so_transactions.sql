SELECT * FROM {{ source('raw_som_transactions', 'raw_som__so_transactions') }}
ORDER BY DELIVERY_METHOD