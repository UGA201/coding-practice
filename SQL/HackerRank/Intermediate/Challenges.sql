SELECT h.hacker_id, name, COUNT(*) AS challenges_created
FROM hackers AS h
     INNER JOIN Challenges ON h.hacker_id = challenges.hacker_id
GROUP BY h.hacker_id, name
HAVING challenges_created = (SELECT MAX(sub.CC)
                            FROM (SELECT hacker_id, COUNT(*) AS CC
                                  FROM challenges
                                  GROUP BY hacker_id) sub
                            )
     OR challenges_created IN (SELECT sbsb.challenges_created
                              FROM (SELECT challenges_created, COUNT(*) AS names
                                    FROM (        
                                        SELECT hacker_id, COUNT(*) AS challenges_created
                                        FROM Challenges
                                        GROUP BY hacker_id
                                        ) AS NT
                              GROUP BY challenges_created
                              HAVING names = 1) sbsb
                             )
ORDER BY challenges_created DESC, h.hacker_id 