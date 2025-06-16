SELECT 
    "Trip_ID" AS ID,
    "Origin_City" AS ORIGIN_CITY,
    "Destination_City" AS DESTINATION_CITY,
    "Airplane_ID" AS AIRPLANE_ID,
    "Start_Timestamp" AS START_TIMESTAMP,
    "End_Timestamp" AS END_TIMESTAMP
    NULL AS 'TRIP_DURATION'
    NULL AS 'DISTANCE'
    NULL AS 'TRIP_TYPE'
FROM {{ source('staging','trip') }}