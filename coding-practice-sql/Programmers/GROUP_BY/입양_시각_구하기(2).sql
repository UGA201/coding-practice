SET @hour = -1;
SELECT @hour := @hour+1 AS HOUR,
    (SELECT COUNT(*)
            FROM animal_outs
            WHERE HOUR(datetime) = @hour) AS COUNT
FROM animal_outs
WHERE @hour < 23