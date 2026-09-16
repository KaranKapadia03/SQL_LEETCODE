select a.player_id,a.event_date as first_login from (select player_id , event_date, rank() over (partition by player_id order by event_date) as asd from Activity) as a  
where a.asd=1
