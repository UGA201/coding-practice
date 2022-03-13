SELECT SUB.hacker_id, H.name
FROM submissions as SUB 
    LEFT JOIN (SELECT C.challenge_id, D.score AS score_by_level
               FROM Challenges C 
                    INNER JOIN difficulty D 
                    on C.difficulty_level = D.difficulty_level) AS SC
                ON SUB.challenge_id = SC.challenge_id
    LEFT JOIN hackers H on H.hacker_id = SUB.hacker_id
WHERE SC.score_by_level = SUB.score
GROUP BY SUB.hacker_id, H.name
HAVING COUNT(SUB.hacker_id) > 1
ORDER BY COUNT(SUB.hacker_id) DESC, SUB.hacker_id ASC