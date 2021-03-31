with teams as (

    select * from DEMO_DB.staging.example_teams

),

team_locations as (

    select * from DEMO_DB.PUBLIC.team_location
),

final as (

    select
        teams.team,
        team_locations.city,
        team_locations.state,
        iff(teams.team = 'Lakers', true, false) as is_champion

    from teams

    left join team_locations
        on team_locations.name = teams.team

)

select * from final