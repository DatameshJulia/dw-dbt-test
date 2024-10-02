{{ config(materialized='table') }}

with source_data as (
    select
        saleId as sale_id,
        customerId as customer_id,
        carId as car_id,
        timestamp(datetime) as datetime
    from {{ source("bronze_layer", "temp_car_sales") }}
)

select * from source_data