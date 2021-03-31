

      create or replace transient table DEMO_DB.staging.example_teams  as
      (with teams as (

    select
        'Lakers' as team

    union all

    select
        'Clippers' as team

    union all

    select
        '76ers' as team

    union all

    select
        'Heat' as team

)

select * from teams
      );
    