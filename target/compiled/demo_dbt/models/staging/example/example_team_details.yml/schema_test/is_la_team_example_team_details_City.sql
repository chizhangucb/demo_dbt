

with validation as (

    select
        City as city,
        team

    from DEMO_DB.staging.example_team_details

),

validation_errors as (

    select
        city

    from validation
    where city = ' Los Angeles'
        and team not in ('Lakers', 'Clippers')

)

select count(*)
from validation_errors

