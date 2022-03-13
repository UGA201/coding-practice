DELETE FROM Person
WHERE id NOT IN (SELECT sub.minid
                        FROM (SELECT Email, MIN(id) AS minid FROM Person GROUP BY Email) sub
                        )