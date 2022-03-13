SELECT L.id AS id
FROM Weather AS L
     INNER JOIN Weather AS R ON L.recordDate = DATE_ADD(R.recordDate, INTERVAL 1 DAY)
WHERE L.Temperature > R.Temperature

