{{ config(materialized='table') }}

with source_data as (
  select * 
  from {{ source('raw','raw_mgas') }}
)
select * from source_data
