with flattened_data as
(
    SELECT 
        manufacturer,
        model,
        specs ->> 'max_seats' AS max_seats,
        specs ->> 'max_weight' AS max_weight,
        specs ->> 'max_distance' AS max_distance,
        specs ->> 'engine_type' AS engine_type
    FROM {{ source('staging','aeroplane_model') }},
    LATERAL jsonb_each(raw_json) AS manufacturers(manufacturer, models),
    LATERAL jsonb_each(models) AS models(model, specs)
)
select 
pln."Airplane_ID" as ID,
pln."Airplane_Model" as MODEL,
pln."Manufacturer" as MANUFACTURER,
flt.max_seats as MAX_SEATS,
flt.max_weight as MAX_WEIGHTS,
flt.max_distance as MAX_DISTANCE,
flt.engine_type as ENGINE_TYPE
from  {{ source('staging','aeroplane') }} pln
left join flattened_data flt on pln."Manufacturer" = flt.manufacturer and pln."Airplane_Model" = flt.model
