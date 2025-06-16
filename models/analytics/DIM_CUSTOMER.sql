SELECT 
    "Customer_ID" AS ID,
    "Name" AS NAME,
    "Customer_Group_ID" AS CUSTOMER_GROUP_ID,
    "Email" AS EMAIL,
    "Phone_Number" AS PHONE_NUMBER
FROM {{ ref('customer') }}