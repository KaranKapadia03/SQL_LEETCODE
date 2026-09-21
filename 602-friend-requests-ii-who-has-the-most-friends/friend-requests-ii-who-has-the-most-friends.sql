 
 WITH NEW_DATA AS (select id,num from
 (select id,sum(counts)  as num from 
 (select accepter_id as id ,count(*) as counts from RequestAccepted
 group by accepter_id
 union all
 select requester_id as id,count(*) as counts from RequestAccepted
 group by requester_id) as b
 group by id
 ) AS GAMMA)

 SELECT ID, NUM FROM NEW_DATA
 WHERE NUM=(SELECT MAX(NUM) FROM NEW_DATA ) 