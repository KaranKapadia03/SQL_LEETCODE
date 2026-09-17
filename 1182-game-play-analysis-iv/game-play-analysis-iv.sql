SELECT 
    ROUND(
        COUNT(DISTINCT CASE 
            WHEN DATEDIFF(DAY, first_date, event_date) = 1 
            THEN player_id 
        END) * 1.0
        / COUNT(DISTINCT player_id),
        2
    ) AS fraction
FROM (
    SELECT 
        player_id,
        event_date,
        MIN(event_date) OVER (PARTITION BY player_id) AS first_date
    FROM Activity
) AS a;