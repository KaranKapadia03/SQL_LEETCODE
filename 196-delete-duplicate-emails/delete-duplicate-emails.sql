DELETE FROM Person
WHERE id IN (
    SELECT id
    FROM (
        SELECT 
            id,
            email,
            ROW_NUMBER() OVER (
                PARTITION BY email 
                ORDER BY id ASC
            ) AS rn
        FROM Person
    ) AS t
    WHERE rn > 1
);