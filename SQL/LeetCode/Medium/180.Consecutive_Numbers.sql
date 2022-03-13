SELECT DISTINCT Num AS ConsecutiveNums
FROM (SELECT Num
            , LEAD(Num) OVER(ORDER BY Id) AS 'B'
            , LEAD(Num,2) OVER(ORDER BY Id) AS 'C'
    FROM Logs) AS sub
WHERE Num = B AND Num = C