SELECT 
    "Order_ID" AS ID,
    "Customer_ID" AS CUSTOMER_ID,
    "Trip_ID" AS TRIP_ID,
    "Price_EUR" AS PRICE_EUR,
    "Seat_No" AS SEAT_NO,
    "Status" AS STATUS
FROM {{ source('staging','order') }}