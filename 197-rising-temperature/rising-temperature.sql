WITH w AS
(
    SELECT
        id,
        recordDate,
        temperature,
        LAG(recordDate) OVER (ORDER BY recordDate) AS prev_date,
        LAG(temperature) OVER (ORDER BY recordDate) AS prev_temp
    FROM Weather
)
SELECT id AS Id
FROM w
WHERE DATEDIFF(day, prev_date, recordDate) = 1
  AND temperature > prev_temp;