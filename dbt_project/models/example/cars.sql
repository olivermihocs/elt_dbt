SELECT * FROM {{ source('dest_db' , 'cars') }}