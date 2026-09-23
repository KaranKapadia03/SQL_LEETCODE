SELECT actor_id, director_id  FROM ActorDirector
group by CONCAT(ACTOR_ID,DIRECTOR_ID),actor_id, director_id
having count(timestamp)>=3
