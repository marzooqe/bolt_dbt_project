SELECT 
    "ID",
    "Type" AS TYPE,
    "Name" AS NAME,
    "Registry_Number" AS REGISTRY_NUMBER
FROM {{ source('staging','customer_group') }}